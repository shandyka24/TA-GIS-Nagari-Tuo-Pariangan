<?= $this->extend('web/layouts/main'); ?>

<?= $this->section('content') ?>

<section class="section">
    <div class="row">
        <!--map-->
        <div class="col-md-8 col-12">
            <div class="card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-md-auto">
                            <h5 class="card-title">Google Maps with Location</h5>
                        </div>
                        <?= $this->include('web/layouts/map-head'); ?>
                    </div>
                </div>
                <?= $this->include('web/layouts/map-body'); ?>
            </div>
        </div>


        <div class="col-md-4 col-12">
            <div class="row">
                <!--popular-->
                <div class="col-12" id="list-rec-col">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title text-center"><?= esc($data['name']); ?></h5>
                        </div>
                        <div class="card-body">
                            <?php $i = 0; ?>
                            <script>
                                clearMarker();
                                clearRadius();
                                clearRoute();
                                objectMarker("<?= esc($data['id_ta']); ?>", <?= esc($data['lat']); ?>, <?= esc($data['lng']); ?>);
                                digitTouristArea();
                            </script>
                            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                                <ol class="carousel-indicators">
                                    <?php foreach ($data['gallery'] as $item) : ?>
                                        <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="<?= esc($i); ?>" class="<?= ($i == 0) ? 'active' : ''; ?>"></li>
                                        <?php $i++; ?>
                                    <?php endforeach; ?>
                                </ol>
                                <div class="carousel-inner">
                                    <?php $i = 0; ?>
                                    <?php foreach ($data['gallery'] as $item) : ?>
                                        <div class="carousel-item<?= ($i == 0) ? ' active' : ''; ?>">
                                            <a>
                                                <img src="<?= base_url('media/photos/' . esc($item)); ?>" class="d-block w-100" alt="<?= esc($data['name']); ?>" onclick="focusObject(`<?= esc($data['id_ta']); ?>`);" style="object-fit: cover; height: 250px;">
                                            </a>
                                        </div>
                                        <?php $i++; ?>
                                    <?php endforeach; ?>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </a>
                            </div>
                            <div class="row">
                                <div class="col table-responsive">
                                    <table class="table table-borderless mt-3 text-dark">
                                        <tbody>
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
                                                <td class="fw-bold">Ticket Price</td>
                                                <td>Rp <?= number_format(esc($data['ticket_price']), 2, ',', '.'); ?></td>
                                            </tr>
                                            <tr>
                                                <td class="fw-bold">Contact Person</td>
                                                <td><?= esc($data['contact_person']); ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Nearby section -->
            <?= $this->include('web/layouts/nearby'); ?>
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
<?= $this->endSection() ?>