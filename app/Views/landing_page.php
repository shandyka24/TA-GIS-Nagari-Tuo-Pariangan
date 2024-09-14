<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Kawasan Wisata Lembah Harau Nagari Tarantang</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="media/icon/favicon.svg" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Quicksand:wght@600;700&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="assets/lib/animate/animate.min.css" rel="stylesheet" />
    <link href="assets/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/landing-page/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/landing-page/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="<?= base_url('css/web.css'); ?>">

    <!-- Third Party CSS and JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/de7d18ea4d.js" crossorigin="anonymous"></script>

    <!-- Google Maps API and Custom JS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB8B04MTIk7abJDVESr6SUF6f3Hgt1DPAY&libraries=drawing"></script>
    <script src="<?= base_url('js/web.js'); ?>"></script>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #home {
            height: 65vh;
            /* Mengatur tinggi elemen agar sesuai dengan tinggi viewport */
        }

        .card {
            height: 100%;
            /* Mengatur kartu agar memenuhi elemen parent */
            border: none;
            /* Opsional: Hilangkan border jika tidak diperlukan */
        }
    </style>
</head>

<body class="text-dark">

    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-4 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
        <a href="/" class="navbar-brand p-0">
            <img class="img-fluid me-3" src="media/icon/logo.svg" alt="Icon" />
            <h1 class="m-0 text-primary">Tourism Village</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse py-4 py-lg-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto">

                <a href="/tes" class="nav-item nav-link active">Tes</a>
                <a href="#home" class="nav-item nav-link active">Home</a>
                <?php if ($village != null) : ?>
                    <a href="/web" class="nav-item nav-link">Explore</a>
                    <a href="#about" class="nav-item nav-link">About</a>
                    <a href="#award" class="nav-item nav-link">Award</a>
                <?php endif; ?>
            </div>
            <?php if (!logged_in()) : ?>
                <a href="<?= base_url('login'); ?>" class="btn btn-primary">Login</a>
            <?php endif; ?>
        </div>
    </nav>
    <!-- Navbar End -->

    <?php if ($village != null) : ?>
        <!-- Header Start -->
        <div class="container-fluid bg-dark p-0 mb-5" id="home">
            <div class="row g-0 flex-column-reverse flex-lg-row">
                <div class="col-lg-6 p-0 wow fadeIn" data-wow-delay="0.1s">
                    <div class="header-bg h-100 d-flex flex-column justify-content-center p-5">
                        <h2 class="display-6 text-light mb-2">
                            Welcome too
                        </h2>
                        <h1 class="display-4 text-light mb-5">
                            Kawasan Wisata Lembah Harau Nagari Tarantang
                        </h1>
                        <div class="d-flex align-items-center pt-4 animated slideInDown">
                            <a href="/web" class="btn btn-primary py-sm-3 px-3 px-sm-5 me-5">Explore</a>
                            <button type="button" class="btn-play" data-bs-toggle="modal" data-src="<?= base_url('media/videos/landing_page.mp4'); ?>" data-bs-target="#videoModal">
                                <span></span>
                            </button>
                            <h6 class="text-white m-0 ms-4 d-none d-sm-block">Watch Video</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="media/photos/landing-page/carousel-1.jpg" alt="" />
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="media/photos/landing-page/carousel-2.jpg" alt="" />
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="media/photos/landing-page/carousel-3.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->

        <!-- Video Modal Start -->
        <div class="modal modal-video fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h3 class="modal-title" id="exampleModalLabel">Video</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <video src="" class="embed-responsive-item" id="video" controls autoplay>Sorry, your browser doesn't support embedded videos</video>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Video Modal End -->

        <!-- About Start -->
        <div class="container-xxl py-5" id="about">
            <div class="container">
                <div class="row p-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <p><span class="text-primary me-2">#</span>Welcome To Desa Wisata </p>
                        <h1 class="display-5 mb-4">
                            Why You Should Visit
                            Kawasan Wisata <span class="text-primary">Lembah Harau Nagari Tarantang</span>
                        </h1>
                        <p class="mb-4">
                            Kawasan Wisata Lembah Harau terletak di Nagari Tarantang, Kecamatan Harau Kabupaten Lima Puluh Kota Sumatra Barat. Lembah Harau dikenal karena keindahan alamnya yang memukau. Anda akan menemukan tebing-tebing curam, air terjun yang indah, serta hamparan sawah dan hijaunya hutan yang menyegarkan. Keindahan alam yang unik ini membuatnya menjadi tempat yang sempurna untuk menikmati alam dan mengabadikan momen indah. Keunikan dari Kawasam Wisata Lembah Harau yaitu terdapatnya geopark. Geopark Lembah Harau memiliki berbagai formasi batuan yang unik dan menarik. Beberapa situs geologi memberikan pandangan tentang sejarah geologi daerah tersebut dan proses-proses alam yang membentuknya.
                        </p>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('at');">
                                <i class="far fa-check-circle text-primary me-3"></i>Attraction
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('hs');">
                                <i class="far fa-check-circle text-primary me-3"></i>Homestay
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('ev');">
                                <i class="far fa-check-circle text-primary me-3"></i>Event
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('cp');">
                                <i class="far fa-check-circle text-primary me-3"></i>Culinary Place
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('wp');">
                                <i class="far fa-check-circle text-primary me-3"></i>Worship Place
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('sp');">
                                <i class="far fa-check-circle text-primary me-3"></i>Souvenir Place
                            </a>
                        </h5>
                        <h5 class="mb-3">
                            <a href="#map" class="text-reset" onclick="showMap('sv');">
                                <i class="far fa-check-circle text-primary me-3"></i>Service Provider
                            </a>
                        </h5>
                        <a class="btn btn-primary py-3 px-5 mt-3" href="/web">Explore</a>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="img-border  ">
                            <img class="img-fluid" src="media/photos/landing-page/bg-about.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="row p-5" id="map">
                    <div class="mb-3">
                        <a class="btn btn-outline-danger float-end" onclick="closeMap();"><i class="fa-solid fa-xmark"></i></a>
                    </div>
                    <div class="col-lg-6 wow fadeInUp googlemaps" data-wow-delay="0.5s" id="googlemaps">
                        <script>
                            initMap();
                        </script>
                        <div id="legend"></div>
                        <script>
                            $('#legend').hide();
                            getLegend();
                        </script>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Award Start -->
        <div class="container-xxl bg-primary facts my-5 py-5 wow fadeInUp" data-wow-delay="0.1s" id="award">
            <div class="container py-5">
                <div class="row g-4">
                    <center>
                        <div class="col-md-12 col-lg-6 text-center wow fadeIn" data-wow-delay="0.1s">
                            <img src="media/photos/landing-page/trophy.png" alt="" style="filter: invert(100%); max-width: 4em" class="mb-3">
                            <!-- <h1 class="text-white mb-2" data-toggle="counter-up">50</h1> -->
                            <p class="text-white mb-0">UNESCO GLOBAL GEOPARK</p>
                        </div>
                    </center>

                    <!-- <div class="col-md-6 col-lg-6 text-center wow fadeIn" data-wow-delay="0.3s">
                    <img src="media/photos/landing-page/rumah-gadang.png" alt="" style="filter: invert(100%); max-width: 5em">
                    <h1 class="text-white mb-2" data-toggle="counter-up">70</h1>
                    <p class="text-white mb-0">Rumah Gadang</p>
                </div> -->
                </div>
            </div>
        </div>
        <!-- Award End -->

        <!--  CHSE Start  -->
        <div class="container-xxl btn-primary py-5 wow fadeInUp" data-wow-delay="0.1s" id="award">
            <div class="container-fluid text-center mt-3">
                <div class="row text-white">
                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 container-strech mb-3">
                        <div class="mask-group-1 d-flex flex-row align-items-center justify-content-evenly text-center">
                            <strong class="">CLEANLINESS</strong>
                            <img class="" src="https://chse.kemenparekraf.go.id/themes/chse-front/assets/landing/img/icons/clean.png">
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 container-strech mb-3">
                        <div class="mask-group-2 d-flex flex-row align-items-center justify-content-evenly text-center">
                            <strong class="">HEALTH</strong>
                            <img class="" src="https://chse.kemenparekraf.go.id/themes/chse-front/assets/landing/img/icons/health.png">
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 container-strech mb-3">
                        <div class="mask-group-3 d-flex flex-row align-items-center justify-content-evenly text-center">
                            <strong class="">SAFETY</strong>
                            <img class="" src="https://chse.kemenparekraf.go.id/themes/chse-front/assets/landing/img/icons/safety.png">
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-3 col-lg-3 container-strech mb-3">
                        <div class="mask-group-1 d-flex flex-row align-items-center justify-content-space text-center">
                            <strong class="">ENVIRONMENT SUSTAINABILITY</strong>
                            <img class="" src="https://chse.kemenparekraf.go.id/themes/chse-front/assets/landing/img/icons/env.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  CHSE End  -->
    <?php else: ?>
        <div class="container-fluid bg-dark p-0 mb-5" id="home">
            <div class="card">
                <div class="card-body d-flex justify-content-center align-items-center">
                    <h3 class="text-center">The app has not been set up</h3>
                </div>
            </div>
        </div>
    <?php endif; ?>


    <!-- Footer Start -->
    <div class="container-fluid footer bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <?php if ($village != null) : ?>
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-9 col-md-6">
                        <h5 class="text-light mb-4">Address</h5>
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>Nagari Tarantang, Harau, Kabupaten Lima Puluh Kota, Sumatera Barat
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>+62 812 6149 9095
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>harauvalley@gmail.com
                        </p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href="https://www.instagram.com/explore_harau"><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/Kampuang%20Minang%20Nagari%20Sumpu"><i class="fab fa-facebook-f"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-light mb-4">Links</h5>
                        <a class="btn btn-link" href="#home">Home</a>
                        <a class="btn btn-link" href="/web">Explore</a>
                        <a class="btn btn-link" href="#about">About</a>
                        <a class="btn btn-link" href="#award">Award</a>
                        <a class="btn btn-link" href="<?= base_url('login'); ?>">Login</a>
                    </div>
                </div>
            </div>
        <?php endif; ?>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">Shandyka Tribuana Putra</a>, All
                        Right Reserved.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="assets/lib/wow/wow.min.js"></script>
    <script src="assets/lib/easing/easing.min.js"></script>
    <script src="assets/lib/waypoints/waypoints.min.js"></script>
    <script src="assets/lib/counterup/counterup.min.js"></script>
    <script src="assets/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="assets/lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="<?= base_url('js/landing-page.js'); ?>"></script>
    <script>
        $('#map').hide();

        function closeMap() {
            $('#map').hide();
        }
    </script>
    <script>
        function showMap(category = null) {
            if ($('#map').hide()) {
                $('#map').show();
            }

            let URI = "<?= base_url('api') ?>";
            clearMarker();
            clearRadius();
            clearRoute();
            if (category == 'rg') {
                URI = URI + '/rumahGadang'
            } else if (category == 'at') {
                URI = URI + '/attraction'
            } else if (category == 'hs') {
                URI = URI + '/homestay'
            } else if (category == 'ev') {
                URI = URI + '/event'
            } else if (category == 'cp') {
                URI = URI + '/culinaryPlace'
            } else if (category == 'wp') {
                URI = URI + '/worshipPlace'
            } else if (category == 'sp') {
                URI = URI + '/souvenirPlace'
            } else if (category == 'sv') {
                URI = URI + '/serviceProvider'
            }

            currentUrl = '';
            $.ajax({
                url: URI,
                dataType: 'json',
                success: function(response) {
                    let data = response.data
                    for (i in data) {
                        let item = data[i];
                        currentUrl = currentUrl + item.id;
                        objectMarker(item.id, item.lat, item.lng);
                    }
                    boundToObject();

                }
            })
        }
    </script>
</body>

</html>