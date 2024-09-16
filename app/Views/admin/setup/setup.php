<?= $this->extend('admin/setup/layouts/main'); ?>

<?= $this->section('content') ?>

<section class="section">
    <div class="row">
        <!--map-->
        <div class="card">
            <div class="card-header">
                <div class="row align-items-center">
                    <div class="col-md-auto">
                        <h5 class="card-title">App Set Up</h5>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <form class="form form-vertical ms-4">
                        <div class="form-body">
                            <fieldset class="form-group mb-4">
                                <script>
                                    getListVillage();
                                </script>
                                <label for="catSelect" class="mb-2">Select Village</label>
                                <select class="form-select" id="catSelect" name="worship_place_category" onchange="getVillageGeom(this.value)" required>
                                </select>
                            </fieldset>
                        </div>
                    </form>
                </div>
                <div class="col-md-8 col-12">
                    <?= $this->include('web/layouts/map-body'); ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection() ?>