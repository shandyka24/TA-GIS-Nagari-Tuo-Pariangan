<?= $this->extend('web/layouts/main'); ?>

<?= $this->section('content') ?>

<section class="section text-dark">
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
                            <h4 class="card-title text-center">Attraction Information</h4>
                            <!-- <div class="text-center">
                                <?php
                                // for ($i = 0; $i < (int)esc($data['avg_rating']); $i++) { 
                                ?>
                                    <span class="material-symbols-outlined rating-color">star</span>
                                <?php
                                // } 
                                ?>
                                <?php
                                // for ($i = 0; $i < (5 - (int)esc($data['avg_rating'])); $i++) { 
                                ?>
                                    <span class="material-symbols-outlined">star</span>
                                <?php
                                // } 
                                ?>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col table-responsive">
                            <table class="table table-borderless text-dark">
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">Name</td>
                                        <td><?= esc($data['name']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Address</td>
                                        <td><?= esc($data['address']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Open</td>
                                        <td><?= date('H:i', strtotime(esc($data['open']))) . ' WIB'; ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Close</td>
                                        <td><?= date('H:i', strtotime(esc($data['close']))) . ' WIB'; ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Contact Person</td>
                                        <td><?= esc($data['phone']); ?> (<?= esc($data['employee_name']); ?>)</td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Price</td>
                                        <td>Rp <?= number_format(esc($data['price']), 0, ',', '.'); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold" colspan="3">Description</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3"><?= esc($data['description']); ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <p class="fw-bold">Facilities</p>
                            <?php $i = 1; ?>
                            <?php foreach ($data['facilities'] as $facility) : ?>
                                <p><?= esc($i) . '. ' . esc($facility); ?></p>
                                <?php $i++; ?>
                            <?php endforeach; ?>
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
                    initMap(<?= esc($data['lat']); ?>, <?= esc($data['lng']); ?>);
                    map.setZoom(16);
                    digitObject("<?= esc(json_encode($data['geoJson'])); ?>");
                </script>
                <script>
                    objectMarker("<?= esc($data['id']); ?>", <?= esc($data['lat']); ?>, <?= esc($data['lng']); ?>, true, "<?= esc($data['attraction_category']); ?>");
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