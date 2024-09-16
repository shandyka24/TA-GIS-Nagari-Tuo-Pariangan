<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\VillageModel;
use CodeIgniter\API\ResponseTrait;

class LandingPage extends BaseController
{
    use ResponseTrait;
    protected $villageModel;
    public function __construct()
    {
        $this->villageModel = new VillageModel();
    }
    public function index()
    {
        $checkVillage = $this->villageModel->check_village()->getRowArray();

        $data = [
            'village' => $checkVillage
        ];
        return view('landing_page', $data);
    }
    public function addVillage()
    {
        $data = [
            'title' => 'New Village',
            // 'facilities' => $facilities,
        ];
        return view('dashboard/village_form', $data);
    }
    public function addVillageNew()
    {
        $request = $this->request->getPost();
        $request['district'] = 'Kabupaten Lima Puluh Kota';
        $requestData = [
            'id' => $request['id'],
            'name' => $request['name'],
            'district' => $request['district'],
        ];
        foreach ($requestData as $key => $value) {
            if (empty($value)) {
                unset($requestData[$key]);
            }
        }
        $geojson = $request['geo-json'];

        $addHS = $this->villageModel->add_village($requestData, $geojson);


        if ($addHS) {
            $data = [
                'title' => 'New Village',
                // 'facilities' => $facilities,
            ];
            return view('dashboard/village_form', $data);
        } else {
            return redirect()->back()->withInput();
        }
    }
    public function getKabKotaData()
    {

        $vilProperty = $this->villageModel->get_kab_kota()->getRowArray();
        $village = 'K11';
        $geoJson = json_decode($this->villageModel->get_geoJson_api_zzz($village)->getRowArray()['geoJson']);
        $content = [
            'type' => 'Feature',
            'geometry' => $geoJson,
            'properties' => [
                'id' => $vilProperty['id'],
                'name' => $vilProperty['name'],
            ]
        ];
        $response = [
            'data' => $content,
            'status' => 200,
            'message' => [
                "Success display data of Sumpur "
            ]
        ];
        return $this->respond($response);
    }
    public function setup() {}
}
