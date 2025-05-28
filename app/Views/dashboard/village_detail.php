<?= $this->extend('dashboard/layouts/main'); ?>

<?= $this->section('content') ?>
<style>
/* Global font size override to 20px */
body, .card, .table, .btn, .form-control, .form-select, .modal, .form-label, label, input, textarea, select, option, th, td, p, span, div, h1, h2, h3, h4, h5, h6{
    font-size: 20px;
}

/* Specific overrides for smaller elements */
.card-title {
    font-size: 20px;
    font-weight: bold;
}

.table th, .table td {
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

.form-control, .form-select {
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

.text-secondary, .text-muted {
    font-size: 18px;
}

/* DataTable specific styles */
.dataTables_wrapper, .dataTables_filter input, .dataTables_length select {
    font-size: 20px;
}

.dataTables_info, .dataTables_paginate {
    font-size: 20px;
}
</style>
<section class="section">
    <div class="row">
        <script>
            currentUrl = '<?= current_url(); ?>';
        </script>

        <!-- Object Detail Information -->
        <div class="col-md-6 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="card-title fs-4 fw-bolder">Village Information</h4>
                        </div>
                        <div class="col-auto">
                            <a href="<?= base_url('dashboard/villages/edit'); ?>/<?= esc($data['id_vi']); ?>" class="btn btn-primary float-end"><i class="fa-solid fa-pencil me-3"></i>Edit</a>
                        </div>
                    </div>
                </div>
                <div class="card-body text-dark">
                    <div class="row">
                        <div class="col table-responsive">
                            <table class="table table-borderless text-dark">
                                <tbody>
                                    <tr>
                                        <td class="fw-bold"><span>Name</span></td>
                                        <td><span><?= esc($data['name']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold"><span>Address</span></td>
                                        <td><span><?= esc($data['address']); ?></span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold"><span>Open</span></td>
                                        <td><span><?= date('H:i', strtotime(esc($data['open']))) . ' WIB'; ?></span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold"><span>Close</span></td>
                                        <td><span><?= date('H:i', strtotime(esc($data['close']))) . ' WIB'; ?></span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold"><span>Ticket Price</span></td>
                                        <td><span><?=
                                            'Rp ' . number_format(esc($data['ticket_price']), 0, ',', '.'); 
                                            ?></span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold"><span>Contact Person</span></td>
                                        <td><span><?= esc($data['phone']);
                                            ?></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p class="fw-bold">Description</p>
                            <p><?= esc($data['description']); ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-12">
            <!-- Object Location on Map -->
            <div class="card text-dark">
                <div class="card-header">
                    <h5 class="card-title fs-4 fw-bolder">Google Maps</h5>
                </div>

                <?= $this->include('web/layouts/map-body'); ?>
                <script>
                    initMap()
                    clearMarker();
                    clearRadius();
                    clearRoute();
                    digitTourismVillage();
                </script>
                <script>
                </script>
            </div>

            <!-- Object Media -->
            <?= $this->include('web/layouts/gallery_video'); ?>
        </div>
    </div>
</section>

<?= $this->endSection() ?>

<?= $this->section('javascript') ?>
<script>
    const myModal = document.getElementById('videoModal');
    const videoSrc = document.getElementById('video-play').getAttribute('data-src');

    myModal.addEventListener('shown.bs.modal', () => {
        console.log(videoSrc);
        document.getElementById('video').setAttribute('src', videoSrc);
    });
    myModal.addEventListener('hide.bs.modal', () => {
        document.getElementById('video').setAttribute('src', '');
    });
</script>
<?= $this->endSection() ?>