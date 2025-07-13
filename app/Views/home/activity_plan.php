<div id="itinerary-container" style="display: none;">

    <div id="itinerary-list-panel" class="mt-3">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Your Travel Route</h5>
            </div>
            <div class="card-body">
                <ul class="list-group" id="itinerary-list"></ul>

                <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-3">
                    <button class="btn btn-sm btn-info" onclick="addReturnToStart()">Return to Initial Location</button>
                    <button class="btn btn-sm btn-outline-danger" onclick="finishItineraryMode()">Done & Close</button>
                </div>
            </div>
        </div>
    </div>

    <div id="itinerary-search-panel" class="mt-3">
        <div class="card card-body">
            <h6 id="itinerary-search-title">Find the First Destination</h6>
            <div class="mb-2">
                <strong>Select Category:</strong>
                <div class="form-check"><input type="checkbox" id="itinerary-check-at" class="form-check-input"><label for="itinerary-check-at">Attraction</label></div>
                <div class="form-check"><input type="checkbox" id="itinerary-check-hs" class="form-check-input"><label for="itinerary-check-hs">Homestay</label></div>
                <div class="form-check"><input type="checkbox" id="itinerary-check-cp" class="form-check-input"><label for="itinerary-check-cp">Culinary</label></div>
                <div class="form-check"><input type="checkbox" id="itinerary-check-wp" class="form-check-input"><label for="itinerary-check-wp">Worship</label></div>
                <div class="form-check"><input type="checkbox" id="itinerary-check-sp" class="form-check-input"><label for="itinerary-check-sp">Souvenir</label></div>
                <div class="form-check"><input type="checkbox" id="itinerary-check-sv" class="form-check-input"><label for="itinerary-check-sv">Service Provider</label></div>
            </div>
            <div class="form-group">
                <label for="itinerary-inputRadius" class="form-label">Radius: <span id="itinerary-radiusValue">0 m</span></label>
                <input type="range" class="form-range" min="0" max="50" value="0" id="itinerary-inputRadius" oninput="document.getElementById('itinerary-radiusValue').innerHTML = this.value * 100 + ' m'">
            </div>
            <button class="btn btn-primary mt-2" onclick="findPlacesForItinerary()">Search Places</button>
        </div>
    </div>

    <div id="itinerary-results-panel" class="mt-3" style="display: none;">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Search Results</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive" id="itinerary-results-container">
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-at"></table>
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-hs"></table>
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-cp"></table>
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-wp"></table>
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-sp"></table>
                    <table class="table table-hover table-sm text-dark" id="itinerary-table-sv"></table>
                </div>
            </div>
        </div>
    </div>
</div>