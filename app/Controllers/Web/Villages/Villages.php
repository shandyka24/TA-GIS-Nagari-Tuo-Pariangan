<?php

namespace App\Controllers\Web\Villages;

use CodeIgniter\Files\File;
use CodeIgniter\RESTful\ResourcePresenter;
use CodeIgniter\API\ResponseTrait;

use App\Models\VillageModel;
use App\Models\VillageGalleryModel;
use Myth\Auth\Models\UserModel;

class Villages extends ResourcePresenter
{
    use ResponseTrait;

    protected $villageModel;
    protected $villageGalleryModel;
    protected $userModel;

    protected $helpers = ['auth', 'url', 'filesystem'];

    public function __construct()
    {
        $this->villageModel = new VillageModel();
        $this->villageGalleryModel = new VillageGalleryModel();
        $this->userModel = new UserModel();
    }

    /**
     * Present a view of resource objects
     *
     * @return mixed
     */
    public function index()
    {

        $village = $this->villageModel->check_village()->getRowArray();
        $user_phone = $this->userModel->get_admin_phone()->getRowArray();
        $village['phone'] = $user_phone['phone'];

        $list_gallery = $this->villageGalleryModel->get_gallery_api($village['id'])->getResultArray();
        $galleries = array();
        foreach ($list_gallery as $gallery) {
            $galleries[] = $gallery['url'];
        }

        $village['gallery'] = $galleries;
        $village['id_vi'] = $village['id'];
        unset($village['id']);

        $data = [
            'title' => $village['name'],
            'data' => $village,
        ];

        return view('dashboard/village_detail', $data);
    }
    public function edit($id = null)
    {
        $village = $this->villageModel->check_village()->getRowArray();
        $user_phone = $this->userModel->get_admin_phone()->getRowArray();
        $village['phone'] = $user_phone['phone'];

        $list_gallery = $this->villageGalleryModel->get_gallery_api($village['id'])->getResultArray();
        $galleries = array();
        foreach ($list_gallery as $gallery) {
            $galleries[] = $gallery['url'];
        }

        $village['gallery'] = $galleries;
        $village['id_vi'] = $village['id'];
        unset($village['id']);

        $data = [
            'title' => 'Edit Village',
            'data' => $village,
        ];

        return view('dashboard/village_edit_form', $data);
    }

    public function update($id = null)
    {
        $request = $this->request->getPost();
        $requestData = [
            'address' => $request['address'],
            'description' => $request['description'],
            'ticket_price' => $request['ticket_price'],
            'open' => $request['open'],
            'close' => $request['close'],
            'email' => ($request['email'] == "") ? null : $request['email'],
            'facebook' => ($request['facebook'] == "") ? null : $request['facebook'],
            'instagram' => ($request['instagram'] == "") ? null : $request['instagram'],
            'youtube' => ($request['youtube'] == "") ? null : $request['youtube'],
            'tiktok' => ($request['tiktok'] == "") ? null : $request['tiktok'],
        ];

        foreach ($requestData as $key => $value) {
            if (empty($value)) {
                unset($requestData[$key]);
            }
        }

        if (isset($request['video'])) {
            $folder = $request['video'];
            $filepath = WRITEPATH . 'uploads/' . $folder;
            $filenames = get_filenames($filepath);
            $vidFile = new File($filepath . '/' . $filenames[0]);
            $vidFile->move(FCPATH . 'media/videos');
            delete_files($filepath);
            rmdir($filepath);
            $requestData['video_url'] = $vidFile->getFilename();
        } else {
            $requestData['video_url'] = null;
        }
        $update = $this->villageModel->update_village($id, $requestData);

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
            $this->villageGalleryModel->update_gallery_api($id, $gallery);
        } else {
            $this->villageGalleryModel->delete_gallery_api($id);
        }

        if ($update) {
            return redirect()->to(base_url('dashboard/villages'));
        } else {
            return redirect()->back()->withInput();
        }
    }
}
