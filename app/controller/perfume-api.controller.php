<?php
require_once './app/model/perfume.model.php';
require_once './app/view/api.view.php';

class PerfumeApiController {

    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new PerfumeModel();
        $this->view = new ApiView();

        //reeds the body request
        $this->data = file_get_contents("php://input");
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getPerfumes() {
        $perfumes = $this->model->getAll();
        $this->view->response($perfumes);
    }

    public function getPerfume($params = null) {
        //
        $id = $params[':ID'];
        $perfumes = $this->model->get($id);

        //
        if($perfumes)
            $this->view->response($perfumes);
        else
            $this->view->response("The perfume with id=$id doesnt exist", 404);
    }

    public function deletePerfume($params = null) {
        $id = $params[':ID'];

        $perfumes = $this->model->get($id);
        if($perfumes) {
            $this->model->delete($id);
            $this->view->response($perfumes);
        }
        else 
            $this->view->response("The perfume with id=$id doesnt exist", 404);
    }
    
    public function insertPerfume($params = null) {
        try {
            $perfumes = $this->getData();

            if(empty($perfumes->perfume_name) || empty($perfumes->notes) || empty($perfumes->longevity) || empty($perfumes->qualification) || empty($perfumes->brand_name) || empty($perfumes->perfume_description)) {
                $this->view->response("Complete the data", 400); 
            }
            else {
                $id = $this->model->insert($perfumes->perfume_name, $perfumes->notes, $perfumes->longevity, $perfumes->qualification, $perfumes->brand_name, $perfumes->perfume_description);
                $perfumes = $this->model->get($id);
                $this->view->response($perfumes, 201);
            }
        }
        catch(Exception) {
            $this->view->response("The brand doesnt exist", 404);
        }
    }

    public function updatePerfume($params = null) {
        try {
            $perfumes = $this->getData();
            $id = $params[':ID'];
    
            if(empty($perfumes->perfume_name) || empty($perfumes->notes) || empty($perfumes->longevity) || empty($perfumes->qualification) || empty($perfumes->brand_name) || empty($perfumes->perfume_description)) {
                $this->view->response("Complete the data", 400); 
            }
            else {
                $id = $this->model->update($id, $perfumes->perfume_name, $perfumes->notes, $perfumes->longevity, $perfumes->qualification, $perfumes->brand_name, $perfumes->perfume_description);
                $perfumes = $this->model->get($id);
                $this->view->response("successfully modified", 201);
            }
        }
        catch(Exception) {
            $this->view->response("The brand doesnt exist", 404);
        }
    }
}