<?= $this->extend('web/layouts/main'); ?>

<?= $this->section('content') ?>

<section class="section">
    <style>
        /* .swal-title {
            font-size: 24px !important;
        }

        .swal-text {
            font-size: 20px !important;
        }

        .swal-button {
            font-size: 20px !important;
        } */

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


        .card-title {
            font-size: 20px;
            font-weight: bold;
        }

        */
        /* .table th, .table td {
    font-size: 20px;
    padding: 12px;
} */

        /* .btn {
    font-size: 20px;
    padding: 10px 16px;
}

/* .btn-sm {
    font-size: 18px;
    padding: 8px 12px;
} */

        .form-control,
        .form-select {
            font-size: 20px;
            padding: 10px;
            font-weight: bold;
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
    <div class=" row">
        <!--map-->
        <div class="col-md-8 col-12">
            <div class="card text-dark">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-md-auto">
                            <h5 class="card-title fs-4 fw-bolder">Google Maps with Location</h5>
                        </div>
                        <?= $this->include('web/layouts/map-head'); ?>
                    </div>
                </div>
                <?= $this->include('web/layouts/map-body'); ?>
            </div>
        </div>

        <div class="col-md-4 col-12">
            <div class="row">
                <!-- List Rumah Gadang -->
                <div class="col-12" id="list-rg-col">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title text-center fs-4 fw-bolder">List Homestay</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive overflow-auto" id="table-user">
                                <script>
                                    clearMarker();
                                    clearRadius();
                                    clearRoute();
                                    digitTourismVillage();
                                </script>
                                <table class="table table-hover mb-0 table-lg text-dark" style="font-size: 20px;">
                                    <thead>
                                        <tr>
                                            <th class="fw-bold" style="font-size: 20px;">#</th>
                                            <th class="fw-bold" style="font-size: 20px;">Name</th>
                                            <th class="fw-bold" style="font-size: 20px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="table-data" style="font-size: 20px;">
                                        <?php if (isset($data)) : ?>
                                            <?php $i = 1; ?>
                                            <?php foreach ($data as $item) : ?>
                                                <tr>
                                                    <script>
                                                        objectMarker("<?= esc($item['id']); ?>", <?= esc($item['lat']); ?>, <?= esc($item['lng']); ?>, true, null, <?= (in_groups('user')) ? 'true' : 'false' ?>);
                                                    </script>
                                                    <td><?= esc($i); ?></td>
                                                    <td class="fw-bold"><?= esc($item['name']); ?></td>
                                                    <td>
                                                        <a data-bs-toggle="tooltip" data-bs-placement="bottom" title="More Info" class="btn icon btn-primary mx-1" onclick="focusObject(`<?= esc($item['id']); ?>`);">
                                                            <span class="material-symbols-outlined">info</span>
                                                        </a>
                                                    </td>
                                                    <?php $i++ ?>
                                                </tr>
                                            <?php endforeach; ?>
                                            <script>
                                                boundToObject();
                                            </script>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Nearby section -->
                <?= $this->include('web/layouts/nearby'); ?>
            </div>
        </div>
    </div>

    <!-- Direction section -->
    <?= $this->include('web/layouts/direction'); ?>
</section>

<?= $this->endSection() ?>

<?= $this->section('javascript') ?>
<script>
    $('#direction-row').hide();
    $('#check-nearby-col').hide();
    $('#result-nearby-col').hide();
</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        setTimeout(() => {
            map.panTo({
                lat: -0.4466521323747273,
                lng: 100.4836235079706
            });
            map.setZoom(17);
        }, 1000);
    });
</script>
<?= $this->endSection() ?>