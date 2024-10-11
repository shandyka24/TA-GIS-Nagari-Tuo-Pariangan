<?php

namespace App\Controllers\Web\WorshipPlace;

use App\Controllers\BaseController;
use App\Database\Migrations\WorshipPlaceCategory;
// use App\Models\GalleryWorshipPlaceModel;
// use App\Models\ReviewModel;
use App\Models\Worship\WorshipPlaceModel;
use App\Models\Worship\WorshipPlaceGalleryModel;
use App\Models\Worship\WorshipPlaceCategoryModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\Files\File;
use CodeIgniter\RESTful\ResourceController;

use App\Models\VillageModel;

class WorshipPlace extends BaseController
{
    use ResponseTrait;

    protected $worshipPlaceModel;
    protected $worshipPlaceGalleryModel;
    protected $worshipPlaceCategoryModel;
    protected $galleryWorshipPlaceModel;
    protected $reviewModel;
    protected $villageModel;

    public function __construct()
    {
        $this->worshipPlaceModel = new WorshipPlaceModel();
        $this->worshipPlaceCategoryModel = new WorshipPlaceCategoryModel();
        $this->worshipPlaceGalleryModel = new WorshipPlaceGalleryModel();
        $this->villageModel = new VillageModel();
        // // $this->galleryWorshipPlaceModel = new GalleryWorshipPlaceModel();
        // $this->reviewModel = new ReviewModel();
    }
    public function index()
    {
        $contents = $this->worshipPlaceModel->get_list_wp_api()->getResult();
        $response = [
            'data' => $contents,
            'status' => 200,
            'message' => [
                "Success get list of Worship Place"
            ]
        ];
        return $this->respond($response);
    }
    public function show($id = null)
    {
        $worshipPlace = $this->worshipPlaceModel->get_wp_by_id_api($id)->getRowArray();
        if (empty($worshipPlace)) {
            return redirect()->to(substr(current_url(), 0, -strlen($id)));
        }

        $list_gallery = $this->worshipPlaceGalleryModel->get_gallery_api($id)->getResultArray();
        $galleries = array();
        foreach ($list_gallery as $gallery) {
            $galleries[] = $gallery['url'];
        }

        $worshipPlace['gallery'] = $galleries;

        $data = [
            'title' => $worshipPlace['name'],
            'data' => $worshipPlace,
        ];

        $data['data']['geoJson'] = [
            'type' => 'Feature',
            'geometry' => json_decode($data['data']['geoJson']),
            'properties' => []
        ];

        if (url_is('*dashboard*')) {
            return view('admin/worship_place_detail', $data);
        }
        return view('web/worship_place_detail', $data);
    }
    public function new()
    {
        $categories = $this->worshipPlaceCategoryModel->get_list_wscat_api()->getResultArray();
        $data = [
            'title' => 'New Worship Place',
            'facilities' => $categories,
        ];
        return view('admin/worship_place_form', $data);
    }
    public function create()
    {
        $request = $this->request->getPost();
        $id = $this->worshipPlaceModel->get_new_id_api();
        $village = $this->villageModel->check_village()->getRowArray();
        $requestData = [
            'id' => $id,
            'village_id' => $village['id'],
            'name' => $request['name'],
            'worship_place_category' => $request['worship_place_category'],
            'address' => $request['address'],
            'capacity' => $request['capacity'],
            'description' => $request['description'],
            'lat' => $request['lat'],
            'lng' => $request['lng'],
        ];
        foreach ($requestData as $key => $value) {
            if (empty($value)) {
                unset($requestData[$key]);
            }
        }

        $geojson = $request['geo-json'];

        $addWP = $this->worshipPlaceModel->add_wp_api($requestData, $geojson);

        if (isset($request['gallery'])) {
            $folders = $request['gallery'];
            $gallery = array();
            foreach ($folders as $folder) {
                $filepath = WRITEPATH . 'uploads/' . $folder;
                $filenames = get_filenames($filepath);
                $fileImg = new File($filepath . '/' . $filenames[0]);
                $fileImg->move(FCPATH . 'media/photos');
                delete_files($filepath);
                rmdir($filepath);
                $gallery[] = $fileImg->getFilename();
            }
            $this->worshipPlaceGalleryModel->add_gallery_api($id, $gallery);
        }

        if ($addWP) {
            return redirect()->to(base_url('dashboard/worshipPlace') . '/' . $id);
        } else {
            return redirect()->back()->withInput();
        }
    }
    public function edit($id = null)
    {
        $worshipPlace = $this->worshipPlaceModel->get_wp_by_id_api($id)->getRowArray();
        if (empty($worshipPlace)) {
            return redirect()->to('dashboard/worshipPlace');
        }

        $list_gallery = $this->worshipPlaceGalleryModel->get_gallery_api($id)->getResultArray();
        $galleries = array();
        foreach ($list_gallery as $gallery) {
            $galleries[] = $gallery['url'];
        }

        $worshipPlace['gallery'] = $galleries;
        $data = [
            'title' => 'Edit Worship Place',
            'data' => $worshipPlace,
        ];
        return view('admin/worship_place_form', $data);
    }
    public function update($id = null)
    {
        $request = $this->request->getPost();
        $requestData = [
            'id' => $id,
            'name' => $request['name'],
            'worship_place_category' => $request['worship_place_category'],
            'address' => $request['address'],
            'capacity' => $request['capacity'],
            'description' => $request['description'],
            'lat' => $request['lat'],
            'lng' => $request['lng'],
        ];
        foreach ($requestData as $key => $value) {
            if (empty($value)) {
                unset($requestData[$key]);
            }
        }
        $geojson = $request['geo-json'];
        $updateWP = $this->worshipPlaceModel->update_wp_api($id, $requestData, $geojson);

        if (isset($request['gallery'])) {
            $folders = $request['gallery'];
            $gallery = array();
            foreach ($folders as $folder) {
                $filepath = WRITEPATH . 'uploads/' . $folder;
                $filenames = get_filenames($filepath);
                $fileImg = new File($filepath . '/' . $filenames[0]);
                $fileImg->move(FCPATH . 'media/photos');
                delete_files($filepath);
                rmdir($filepath);
                $gallery[] = $fileImg->getFilename();
            }
            $this->worshipPlaceGalleryModel->update_gallery_api($id, $gallery);
        } else {
            $this->worshipPlaceGalleryModel->delete_gallery_api($id);
        }

        if ($updateWP) {
            return redirect()->to(base_url('dashboard/worshipPlace') . '/' . $id);
        } else {
            return redirect()->back()->withInput();
        }
    }
}
