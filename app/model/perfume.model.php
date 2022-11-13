<?php

class PerfumeModel {
    
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=perfume_shop;charset=utf8', 'root', '');
    }

    /**
     * Returns perfume list
     */
    public function getAll() {
        // 1. open connection with DB.
        // is already opened by the constructor of the class.

        // 2. execute the sentence (2 substeps).
        $query = $this->db->prepare("SELECT * FROM perfumes");
        $query->execute();

        // 3. get the results
        $perfumes = $query->fetchAll(PDO::FETCH_OBJ); // return object array.
        
        return $perfumes;
    }

    public function get($id) {
        $query = $this->db->prepare("SELECT * FROM perfumes WHERE id_perfume = ?");
        $query->execute([$id]);
        $perfumes = $query->fetch(PDO::FETCH_OBJ);
        
        return $perfumes;
    }

    /**
     * Insert a perfume into the data base.
     */
    public function insert($name, $notes, $longevity, $qualification, $brand, $description) {
        $query = $this->db->prepare("INSERT INTO perfumes (perfume_name, notes, longevity, qualification, brand_name, perfume_description) VALUES (?,?,?,?,?,?)");
        $query->execute([$name, $notes, $longevity, $qualification, $brand, $description]);

        return $this->db->lastInsertId();
    }

    /**
     * Delete a perfume by id.
     */
    function delete($id) {
        $query = $this->db->prepare('DELETE FROM perfumes WHERE id_perfume = ?');
        $query->execute([$id]);
    }

    /**
     * Update a perfume by id.
     */
    function update($id, $name, $notes, $longevity, $qualification, $brand, $description) {
        $query = $this->db->prepare("UPDATE perfumes SET perfume_name=?, notes=?, longevity=?, qualification=?, brand_name=?, perfume_description=? WHERE id_perfume=?");
        $query->execute([$name, $notes, $longevity, $qualification, $brand, $description, $id]); 

        return $this->db->lastInsertId();
    }

    /**
     * Sort by column.
     */
    function sort($column) {
        $query = $this->db->prepare("SELECT * FROM perfumes ORDER BY $column");
        $query->execute();

        $perfumes = $query->fetchAll(PDO::FETCH_OBJ); // return object array.
        
        return $perfumes;
    }

    /**
     * Filter.
     */
    function filter($columns, $table, $column, $name) {
        $query = $this->db->prepare("SELECT $columns FROM $table WHERE $column = ?"); //ex: SELECT * FROM perfumes WHERE id_perfume = ? 
        $query->execute([$name]);
        $object = $query->fetchAll(PDO::FETCH_OBJ);

        return $object; 
    }

    function sortfilt($columns, $table, $sort) {
        $query = $this->db->prepare("SELECT $columns FROM $table ORDER BY $sort");
        $query->execute();
        $object = $query->fetchAll(PDO::FETCH_OBJ);

        return $object; 
    }
}