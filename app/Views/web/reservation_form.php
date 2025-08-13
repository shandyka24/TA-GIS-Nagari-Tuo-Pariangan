<?= $this->extend('web/layouts/main'); ?>

<?= $this->section('content') ?>

<section class="section text-dark">
    <style>
        /* Global font size override to 20px */
        body,
        .card,
        .table,
        .btn,
        .form-control,
        .form-select,
        .modal,
        .form-label,
        label,
        input,
        textarea,
        select,
        option,
        th,
        td,
        p,
        span,
        div,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-size: 20px;
        }

        /* Specific overrides for smaller elements */
        .card-title {
            font-size: 20px;
            font-weight: bold;
        }

        .table th,
        .table td {
            font-size: 20px;
            padding: 12px;
        }

        .btn {
            font-size: 20px;
            padding: 10px 16px;
        }

        .btn-sm {
            font-size: 18px;
            padding: 8px 12px;
        }

        .form-control,
        .form-select {
            font-size: 20px;
            padding: 10px;
            color: black;
            /* font-weight: bold; */
        }

        .modal-title {
            font-size: 22px;
        }

        .input-group-text {
            font-size: 20px;
        }

        .form-check-label {
            font-size: 20px;
        }

        .text-secondary,
        .text-muted {
            font-size: 18px;
        }

        /* DataTable specific styles */
        .dataTables_wrapper,
        .dataTables_filter input,
        .dataTables_length select {
            font-size: 20px;
        }

        .dataTables_info,
        .dataTables_paginate {
            font-size: 20px;
        }
    </style>
    <!-- <style>
        .seven-days-weather {
            padding: 10px 0;
        }

        .weather-item {
            min-width: 120px;
            padding: 10px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .weather-item:hover {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .weather-img {
            width: 50px;
            height: 50px;
        }

        .date-box {
            font-size: 0.9rem;
        }

        .weather-description span {
            font-size: 0.8rem;
            padding: 4px 8px;
        }

        .temperature-box {
            font-size: 0.85rem;
        }

        .temp-min,
        .temp-max {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 4px;
        }

        .overflow-auto::-webkit-scrollbar {
            height: 8px;
        }

        .overflow-auto::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 4px;
        }

        .overflow-auto::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 4px;
        }

        .overflow-auto::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
    </style> -->
    <div class="row">
        <script>
            currentUrl = '<?= current_url(); ?>';

            function checkRequired(event) {
                event.preventDefault();

                var checkboxes = document.querySelectorAll('input[type="checkbox"]');
                var checkedOne = Array.prototype.slice.call(checkboxes).some(x => x.checked);

                if (!checkedOne) {
                    Swal.fire('Please select at least 1 unit to make reservation!');
                    return false;
                }

                Swal.fire({
                    title: "Are you sure?",
                    showDenyButton: true,
                    showCancelButton: false,
                    confirmButtonText: "Yes",
                    denyButtonText: `Cancel`
                }).then((result) => {
                    if (result.isConfirmed) {
                        event.target.submit();
                    } else if (result.isDenied) {
                        return false;
                    }
                });
            }
        </script>

        <div class="col-md-12 col-12">
            <div class="card">
                <div class="card-body">
                    <div class="seven-days-weather">
                        <p>Weather Forecast up to 13 Days Ahead</p>
                        <div class="overflow-auto">
                            <ul class="list-unstyled d-flex">
                                <?php foreach ($weather_dates as $index => $date): ?>
                                    <li class="mx-3 text-center">
                                        <div class="fw-bold mb-1"><?= $weather_data['day_names'][$index] ?? '' ?></div>
                                        <strong><span style="font-size: 17px;"><?= date('m-d-Y', strtotime($date)) ?></span></strong>
                                        <img src="<?= $weather_icons[$index] ?>" alt="Weather Icon">
                                        <div class="weather-desc mb-2">
                                            <?= $weather_data['weather_descriptions'][$index] ?? 'N/A' ?>
                                        </div>
                                        <span style="font-size: 18px;">Min: <?= $weather_data['temperature_2m_min'][$index] ?? 'N/A' ?>°C</span>
                                        <span style="font-size: 18px;">Max: <?= $weather_data['temperature_2m_max'][$index] ?? 'N/A' ?>°C</span>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- <div class="col-md-12 col-12">
            <div class="card">
                <div class="card-body">
                    <div class="seven-days-weather">
                        <h5 class="card-title mb-3">Prediksi Cuaca hingga 14 Hari ke Depan</h5>
                        <div class="overflow-auto">
                            <ul class="list-unstyled d-flex">
                                <?php foreach ($weather_dates as $index => $date): ?>
                                    <li class="mx-3 text-center weather-item">
                                        <div class="date-box mb-2">
                                            <strong><?= $date ?></strong>
                                        </div>
                                        <div class="weather-icon mb-2">
                                            <img src="<?= $weather_icons[$index] ?>" alt="Weather Icon" class="weather-img">
                                        </div>
                                        <div class="weather-description mb-2">
                                            <span class="badge bg-light text-dark">
                                                <?= $weather_descriptions[$index] ?? 'N/A' ?>
                                            </span>
                                        </div>
                                        <div class="temperature-box">
                                            <div class="temp-min mb-1">
                                                <i class="bi bi-thermometer-low"></i>
                                                <span><?= $weather_data['temperature_2m_min'][$index] ?? 'N/A' ?>°C</span>
                                            </div>
                                            <div class="temp-max">
                                                <i class="bi bi-thermometer-high"></i>
                                                <span><?= $weather_data['temperature_2m_max'][$index] ?? 'N/A' ?>°C</span>
                                            </div>
                                        </div>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- Object Detail Information -->
        <div class="col-md-12 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="card-title fs-4 fw-bolder"><?= esc($title); ?> for Personal</h4>
                        </div>
                        <div class="col">
                            <button form="reservation-form" type="submit" class="float-end btn btn-primary">Make Reservation</button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form id="reservation-form" class="form form-vertical" action="" method="post" enctype="multipart/form-data" onsubmit="checkRequired(event)">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-5 col-12" style="border-right: 1px dashed #333;">
                                    <div class="row">
                                        <div class="col-md-7 col-12">
                                            <div class="form-group mb-4">
                                                <label for="check_in" class="mb-2">Check In</label>
                                                <div class="input-group">
                                                    <input type="date" id="check_in" style="width: 60px; height: 50px; padding: 8px; font-size: 18px;" class="form-control text-dark" name="check_in" onchange="getCheckOut2()" value="" required>
                                                    <input type="time" class="form-control text-dark" style="width: 40px; height: 50px; padding: 4px; font-size: 18px; " id="check_in_time" value="14:00" required disabled>
                                                    <script>
                                                        function getCheckOut2() {
                                                            const dayOfStay = document.getElementById("day_of_stay");
                                                            if (dayOfStay.value != 0) {
                                                                getCheckOut(dayOfStay.value);
                                                            }
                                                        }
                                                    </script>
                                                    <script>
                                                        $(document).ready(function() {
                                                            $('#units-available').hide();
                                                        });
                                                    </script>
                                                    <script>
                                                        var date = new Date();
                                                        date.setDate(date.getDate() + 3);

                                                        let year = date.getFullYear();
                                                        let month = date.getMonth() + 1;
                                                        if (month < 10) {
                                                            month = '0' + month;
                                                        }
                                                        let daydate = date.getDate();
                                                        if (daydate < 10) {
                                                            daydate = '0' + daydate;
                                                        }
                                                        let minDate = year + '-' + month + '-' + daydate;

                                                        const checkInInput = document.getElementById("check_in");
                                                        checkInInput.setAttribute("min", minDate);
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-12">
                                            <div class="form-group mb-4">
                                                <label for="check_out" class="mb-2">Check Out</label>
                                                <div class="input-group">
                                                    <input type="datetime-local" id="check_out" class="form-control text-dark" style="font-size: 18px;" name="check_out" value="" disabled required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4 col-md-4 col-12">
                                        <label for="name" class="mb-2">Day of Stay</label>
                                        <input type="number"
                                            id="day_of_stay"
                                            class="form-control text-dark"
                                            name="day_of_stay"
                                            onchange="getCheckOut(this.value)"
                                            min="1"
                                            pattern="^[1-9][0-9]*$"
                                            oninput="this.value = this.value.replace(/[^0-9]/g, '');"
                                            value=""
                                            required>
                                        <script>
                                            async function getCheckOut(val) {
                                                const dayOfStay = document.getElementById("day_of_stay");
                                                const checkOutInput = document.getElementById("check_out");
                                                let checkInVal = checkInInput.value;
                                                if (checkInVal === '') {
                                                    Swal.fire('Please insert check in date first!');
                                                    dayOfStay.value = "";
                                                } else {
                                                    var checkInDate = new Date(checkInInput.value);
                                                    checkInDate.setDate(checkInDate.getDate() + parseInt(dayOfStay.value));
                                                    let coyear = checkInDate.getFullYear();
                                                    let comonth = checkInDate.getMonth() + 1;
                                                    if (comonth < 10) {
                                                        comonth = '0' + comonth;
                                                    }
                                                    let codaydate = checkInDate.getDate();
                                                    if (codaydate < 10) {
                                                        codaydate = '0' + codaydate;
                                                    }

                                                    let checkOutVal = coyear + '-' + comonth + '-' + codaydate + 'T12:00';
                                                    checkOutInput.value = checkOutVal;
                                                }
                                                getUnitType('<?= esc($homestay_id); ?>');

                                                if (checkInVal) {
                                                    // console.log(checkInVal);
                                                    // for (let i = 0; i < parseInt(dayOfStay.value); i++) {

                                                    // }
                                                    // Ambil data cuaca
                                                    const weatherData = await fetchWeatherData(checkInVal);
                                                    // console.log(weatherData);
                                                    displayWeatherInfo(weatherData);
                                                }
                                            }

                                            async function fetchWeatherData(date) {
                                                // const apiKey = '062ecfbd4971967b41f2bed841fe6af7';
                                                const lat = '-0.4505930495362753'; // Sesuaikan dengan lokasi pantai, 
                                                const lon = '100.4887328808639'; // Sesuaikan dengan lokasi pantai
                                                // const weatherUrl = `https://api.openweathermap.org/data/2.5/forecast?lat=${lat}&lon=${lon}&appid=${apiKey}&units=metric`;
                                                const checkOutInput = document.getElementById("check_out");

                                                const today = new Date(); // tanggal sekarang
                                                const futureDate = new Date(); // buat salinan agar tidak ubah 'today'
                                                futureDate.setDate(today.getDate() + 13); // tambah 13 hari

                                                // Format hasil ke YYYY-MM-DD
                                                const fDate = futureDate.toISOString().split('T')[0];
                                                // console.log(fDate); // Contoh: 2025-05-20

                                                let result = [];
                                                if (checkInInput.value <= fDate) {
                                                    if (checkOutInput.value.split("T")[0] <= fDate) {
                                                        // console.log('checkout weather prediction available');
                                                        const weatherUrl = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&daily=temperature_2m_min,temperature_2m_max,weathercode&timezone=auto&start_date=${checkInInput.value}&end_date=${checkOutInput.value.split("T")[0]}`;

                                                        const response = await fetch(weatherUrl);
                                                        const data = await response.json();

                                                        result = data.daily.time.map((time, index) => ({
                                                            time,
                                                            temperature_min: data.daily.temperature_2m_min[index],
                                                            temperature_max: data.daily.temperature_2m_max[index],
                                                            weathercode: data.daily.weathercode[index]
                                                        }));
                                                    } else {
                                                        // console.log('check out  weather prediction unavailable');
                                                        const weatherUrl = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&daily=temperature_2m_min,temperature_2m_max,weathercode&timezone=auto&start_date=${checkInInput.value}&end_date=${fDate}`;

                                                        const response = await fetch(weatherUrl);
                                                        const data = await response.json();

                                                        result = data.daily.time.map((time, index) => ({
                                                            time,
                                                            temperature_min: data.daily.temperature_2m_min[index],
                                                            temperature_max: data.daily.temperature_2m_max[index],
                                                            weathercode: data.daily.weathercode[index]
                                                        }));

                                                        let startDate = new Date(fDate);
                                                        const endDate = new Date(checkOutInput.value.split("T")[0]);

                                                        // Tambahkan 1 hari agar mulai dari 21
                                                        startDate.setDate(startDate.getDate() + 1);

                                                        const dates = [];

                                                        while (startDate <= endDate) {
                                                            const formatted = startDate.toISOString().split('T')[0];
                                                            dates.push(formatted);

                                                            startDate.setDate(startDate.getDate() + 1);
                                                        }

                                                        dates.forEach(element => {
                                                            const newEntry = {
                                                                time: element,
                                                                temperature_min: 0,
                                                                temperature_max: 0,
                                                                weathercode: 7
                                                            };

                                                            // Push ke array
                                                            result.push(newEntry);

                                                        });

                                                        // console.log(dates);
                                                    }
                                                } else {
                                                    // console.log('checkin weather prediction unavailable');
                                                    let startDate = new Date(checkInInput.value);
                                                    const endDate = new Date(checkOutInput.value.split("T")[0]);

                                                    // Tambahkan 1 hari agar mulai dari 21
                                                    const dates = [];

                                                    while (startDate <= endDate) {
                                                        const formatted = startDate.toISOString().split('T')[0];
                                                        dates.push(formatted);

                                                        startDate.setDate(startDate.getDate() + 1);
                                                    }

                                                    dates.forEach(element => {
                                                        const newEntry = {
                                                            time: element,
                                                            temperature_min: 0,
                                                            temperature_max: 0,
                                                            weathercode: 7
                                                        };

                                                        // Push ke array
                                                        result.push(newEntry);

                                                    });
                                                }
                                                // const weatherUrl = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&daily=temperature_2m_min,temperature_2m_max,weathercode&timezone=auto&start_date=${checkInInput.value}&end_date=${checkOutInput.value.split("T")[0]}`;
                                                // const response = await fetch(weatherUrl);
                                                // const data = await response.json();

                                                // const result = data.daily.time.map((time, index) => ({
                                                //     time,
                                                //     temperature_min: data.daily.temperature_2m_min[index],
                                                //     temperature_max: data.daily.temperature_2m_max[index],
                                                //     weathercode: data.daily.weathercode[index]
                                                // }));

                                                // console.log(result);

                                                // Cari data cuaca berdasarkan tanggal yang dipilih
                                                // const weather = data.list.find(entry => entry.dt_txt.startsWith(date));
                                                // console.log(data);
                                                return result;

                                            }
                                        </script>
                                    </div>
                                    <div id="weather-info1" class="mt-3">
                                        <h5>Weather Information : </h5>
                                        <div class="col-md-auto" id="weather-info">
                                            <p id="weather-result">Please select check in date and day of stay to check the weather.</p>
                                        </div>
                                    </div>
                                    <fieldset class="form-group mb-4 col-md-5 col-12">
                                        <label for="unit_type" class="">Unit Type</label>
                                        <select class="form-select text-dark" style="width: 250px; height: 50px; padding: 8px;" id="unit_type" name="unit_type" onchange="getUnitType('<?= esc($homestay_id); ?>')" required>
                                            <option class="text-dark" value="" selected disabled>--Choose Unit Type--</option>
                                            <option class="text-dark" value="1">Room</option>
                                            <option class="text-dark" value="2">Villa</option>
                                            <option class="text-dark" value="3">Hall</option>
                                        </select>
                                    </fieldset>
                                    <div class="form-group mb-4 col-md-4 col-12">
                                        <label for="name" class="mb-2">Total People</label>
                                        <input type="number"
                                            id="total_people"
                                            class="form-control text-dark"
                                            name="total_people"
                                            min="1"
                                            pattern="^[1-9][0-9]*$"
                                            oninput="this.value = this.value.replace(/[^0-9]/g, ''); validatePeople();"
                                            required>
                                        <small id="people-warning" class="text-danger d-none"></small>

                                        <script>
                                            function updateMaxPeople() {
                                                let checkboxes = document.querySelectorAll('input[name="unit_number[]"]:checked');
                                                let totalCapacity = 0;

                                                checkboxes.forEach(cb => {
                                                    const capacity = parseInt(cb.dataset.capacity || "0", 10);
                                                    totalCapacity += capacity;
                                                });

                                                const totalPeopleInput = document.getElementById('total_people');
                                                totalPeopleInput.max = totalCapacity;

                                                // Cek ulang validasi setelah max berubah
                                                validatePeople();
                                            }

                                            function validatePeople() {
                                                const totalPeopleInput = document.getElementById('total_people');
                                                const warning = document.getElementById('people-warning');

                                                const value = parseInt(totalPeopleInput.value || "0", 10);
                                                const max = parseInt(totalPeopleInput.max || "0", 10);

                                                if (max === 0) {
                                                    warning.textContent = "Please select at least one unit to set capacity.";
                                                    warning.classList.remove('d-none');
                                                    totalPeopleInput.setCustomValidity("No capacity set.");
                                                } else if (value === 0) {
                                                    warning.textContent = "Minimum number of people is 1.";
                                                    warning.classList.remove('d-none');
                                                    totalPeopleInput.setCustomValidity("Minimum 1 person required.");
                                                } else if (value > max) {
                                                    warning.textContent = `Maximum allowed is ${max} people.`;
                                                    warning.classList.remove('d-none');
                                                    totalPeopleInput.setCustomValidity(`Cannot exceed ${max} people.`);
                                                } else {
                                                    warning.classList.add('d-none');
                                                    totalPeopleInput.setCustomValidity("");
                                                }
                                            }
                                        </script>

                                    </div>
                                </div>
                                <div class="col-md-7 col-12" id="unit-available">
                                    <div class="text-center mb-3 mt-3">
                                        <h5 class="fw-bold fs-4 fw-bolder">Unit Available</h5>
                                    </div>
                                    <div id="units-available" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function displayWeatherInfo(weather) {
        console.log(weather);
        $("#weather-info").empty();
        let wtext = '<div class="card">' +
            '<div class="card-body">' +
            '<div class="seven-days-weather">' +
            '<div class="overflow-auto">' +
            '<ul class="list-unstyled d-flex">';

        const icons = {
            0: '01d',
            1: '02d',
            2: '02d',
            3: '03d',
            45: '50d',
            48: '50d',
            51: '09d',
            53: '09d',
            55: '09d',
            61: '10d',
            63: '10d',
            65: '10d',
            80: '09d',
            81: '09d',
            82: '09d',
            95: '11d',
            96: '11d',
            99: '11d'
        };

        const descriptions = {
            0: 'Clear',
            1: 'Partly Cloudy',
            2: 'Partly Cloudy',
            3: 'Cloudy',
            45: 'Foggy',
            48: 'Dense Fog',
            51: 'Light Drizzle',
            53: 'Drizzle',
            55: 'Heavy Drizzle',
            61: 'Light Rain',
            63: 'Rain',
            65: 'Heavy Rain',
            80: 'Rain Showers',
            81: 'Rain Showers',
            82: 'Heavy Showers',
            95: 'Thunderstorm',
            96: 'Thunderstorm',
            99: 'Severe Storm'
        };

        weather.forEach(element => {
            const tanggal = new Date(element.time);
            if (element.weathercode == 7) {
                wtext = wtext + '<li class="mx-3 text-center">' +
                    '<div class="fw-bold">' + tanggal.toLocaleDateString('en-US', {
                        weekday: 'long'
                    }) + '</div>' +
                    '<div style="font-size: 17px;"><strong>' + tanggal.toLocaleDateString('en-US', {
                        month: '2-digit',
                        day: '2-digit',
                        year: 'numeric'
                    }).replace(/\//g, '-') + '</strong></div>' +
                    // '<strong>' + element.time + '</strong><br>' +
                    '<span>Weather Prediction is Unavailable</span>' +
                    '</li>';
            } else {
                wtext = wtext + '<li class="mx-3 text-center">' +
                    '<div class="fw-bold ">' + tanggal.toLocaleDateString('en-US', {
                        weekday: 'long'
                    }) + '</div>' +
                    '<div style="font-size: 17px;"><strong>' + tanggal.toLocaleDateString('en-US', {
                        month: '2-digit',
                        day: '2-digit',
                        year: 'numeric'
                    }).replace(/\//g, '-') + '</strong></div>' +
                    // '<strong>' + element.time + '</strong><br>' +
                    '<img src="https://openweathermap.org/img/wn/' + icons[element.weathercode] + '@2x.png" alt="Weather Icon">' +
                    '<div class="weather-desc">' +
                    descriptions[element.weathercode] +
                    '</div>' +
                    '<span style="font-size: 18px;">Min: ' + element.temperature_min + '</span><br>' +
                    '<span style="font-size: 18px;">Max: ' + element.temperature_max + '°C</span>' +
                    '</li>';
            }
            // console.log(element.time);
            // wtext = wtext + '<li class="mx-3 text-center">' +
            //     '<strong>' + element.time + '</strong><br>' +
            //     '<img src="https://openweathermap.org/img/wn/' + icons[element.weathercode] + '@2x.png" alt="Weather Icon">' +
            //     '<div class="weather-desc mb-2">' +
            //     descriptions[element.weathercode] +
            //     '</div>' +
            //     '<span>Min: ' + element.temperature_min + '</span><br>' +
            //     '<span>Max: ' + element.temperature_max + '°C</span>' +
            //     '</li>';
        });
        wtext = wtext + '</ul>' +
            '</div>' +
            '</div>' +
            '</div>' +
            '</div>';

        $("#weather-info").append(wtext);
        // const weatherResult = document.getElementById('weather-info');

        // if (weather) {
        //     const weatherIcon = weather.weather[0].icon; // Mendapatkan kode ikon cuaca
        //     const temperature = weather.main.temp;
        //     const capitalizedWeatherDescription = weather.weather[0].description.charAt(0).toUpperCase() + weather.weather[0].description.slice(1);
        //     const humidity = weather.main.humidity;
        //     const windSpeed = weather.wind.speed;

        //     weatherResult.innerHTML = `
        //             <h2 style="margin-bottom: 10px;">Weather Information :</h2>
        //             <img src="http://openweathermap.org/img/wn/${weatherIcon}.png" alt="Weather Icon" style="margin-right: 10px; filter: drop-shadow(2px 2px 4px rgba(0, 0, 0, 0.5));" />
        //             <span style="margin-right: 10px;">${temperature}°C</span>
        //             <span style="margin-right: 10px;">${capitalizedWeatherDescription}</span><br>
        //             <span style="margin-right: 10px;">Humidity: ${humidity}%</span>
        //             <span style="margin-right: 10px;">Wind: ${windSpeed} m/s</span>
        //         `;
        // } else {
        //     weatherResult.textContent = 'Weather information is unavailable for the selected date.';
        // }
    }
</script>
<?= $this->endSection() ?>