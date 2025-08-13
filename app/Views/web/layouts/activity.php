<!-- <style>
    .swal2-confirm {
        background-color: #FF0000 !important;
    }
</style> -->
<!-- Check nearby -->
<div class="table-responsive overflow-auto col-12" id="check-activity">
    <div class="card text-dark">
        <div class="card-header">
            <h5 class="card-title text-center fs-4 fw-bolder">Choose Object Activity</h5>
        </div>
        <div class="card-body">
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-uatt-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-uatt">Unique Attraction</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-att-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-att">Ordinary Attraction</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-hs-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-hs">Homestay</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-cp-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Culinary Place</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-sp-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Souvenir Place</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-wp-act" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Worship Place</label>
                </div>
            </div>
            <div class="mt-3" style="font-size: 20px;">
                <label for="inputRadiusAct" class="form-label">Radius: </label>
                <label id="radiusValueAct" class="form-label">0 m</label>
                <input type="range" class="form-range" min="0" max="20" value="0" id="inputRadiusAct" name="inputRadius" onchange="updateRadiusAct('Activity');">
            </div>
        </div>
    </div>
</div>

<!-- Search result nearby -->
<div class="table-responsive overflow-auto col-12" id="your-activity">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title text-center fs-4 fw-bolder" id="yap">Your Activity Plan</h5>
        </div>
        <div class="card-body">
            <div id="table-activity" style="max-height: 300px; overflow-y: auto;">
                <table class="table table-hover mb-3 table-lg text-dark" style="font-size: 20px;" id="table-act">
                    <!-- konten baris tabel -->
                </table>
            </div>
            <div class="d-flex justify-content-center gap-3">
                <button class="btn btn-primary" id="btn-back-homestay" onclick="backToHomestay();">
                    <i class="fa-solid fa-circle-left me-2"></i><span id="back-back">Back to Homestay</span>
                </button>
                <button class="btn btn-success" id="btn-show-all-route" onclick="showAllRoutes();" disabled>
                    <i class="fa-solid fa-route me-2"></i> Show All Routes
                </button>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>