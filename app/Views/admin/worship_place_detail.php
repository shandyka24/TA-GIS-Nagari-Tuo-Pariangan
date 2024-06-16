<?= $this->extend('dashboard/layouts/main'); ?>

<?= $this->section('content') ?>

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
                            <h4 class="card-title text-center">Worship Place Information</h4>
                        </div>
                        <div class="col-auto">
                            <a href="<?= base_url('dashboard/worshipPlace/edit'); ?>/<?= esc($data['id']); ?>" class="btn btn-primary float-end"><i class="fa-solid fa-pencil me-3"></i>Edit</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col table-responsive">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">Name</td>
                                        <td><?= esc($data['name']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Category</td>
                                        <td><?= esc($data['category']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Address</td>
                                        <td><?= esc($data['address']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Capacity</td>
                                        <td><?= esc($data['capacity']); ?> people</td>
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
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Google Maps</h5>
                </div>

                <?= $this->include('web/layouts/map-body'); ?>
                <script>
                    initMap(<?= esc($data['lat']); ?>, <?= esc($data['lng']); ?>)
                    digitObject("<?= esc(json_encode($data['geoJson'])); ?>");
                </script>
                <script>
                    objectMarker("<?= esc($data['id']); ?>", <?= esc($data['lat']); ?>, <?= esc($data['lng']); ?>);
                    map.setZoom(20);
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