<!-- Check nearby -->
<div class="col-12" id="check-nearby-col">
    <div class="card text-dark">
        <div class="card-header">
            <h5 class="card-title text-center fs-4 fw-bolder">Object Around</h5>
        </div>
        <div class="card-body">
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-uatt" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-uatt">Unique Attraction</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-att" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-att">Ordinary Attraction</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-hs" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-hs">Homestay</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-cp" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Culinary Place</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-sp" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Souvenir Place</label>
                </div>
            </div>
            <div class="form-check">
                <div class="checkbox">
                    <input type="checkbox" id="check-wp" class="form-check-input" style="font-size: 18px;">
                    <label class="text-dark fw-bold" style="font-size: 20px;" for="check-cp">Worship Place</label>
                </div>
            </div>
            <div class="mt-3" style="font-size: 20px;">
                <label for="inputRadiusNearby" class="form-label">Radius: </label>
                <label id="radiusValueNearby" class="form-label">0 m</label>
                <input type="range" class="form-range" min="0" max="20" value="0" id="inputRadiusNearby" name="inputRadius" onchange="updateRadius('Nearby');">
            </div>
        </div>
    </div>
</div>

<!-- Search result nearby -->
<div class="col-12" id="result-nearby-col">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title text-center fs-4 fw-bolder">Search Result Object Around</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive overflow-auto" id="table-result-nearby">
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-uatt">
                </table>
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-att">
                </table>
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-hs">
                </table>
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-cp">
                </table>
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-sp">
                </table>
                <table class="table table-hover mb-md-5 mb-3 table-lg text-dark" style="font-size: 20px;" id="table-wp">
                </table>
            </div>
        </div>
    </div>
</div>