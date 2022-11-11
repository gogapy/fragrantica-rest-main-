"use strict"

const URL = "api/tasks/";

let tasks = [];

let form = document.querySelector('#perfume-form');
form.addEventListener('submit', insertTask);

/**
 * 
 */
async function getAll() {
    try {
        let response = await fetch(URL);
        if(!response.ok) {
            throw new Error('Recurso no existe');
        }
        perfumes = await response.json();
        showPerfumes();
    } catch(e) {
        console.log(e);
    }
}

/**
 * 
 */
async function insertPerfume(e) {
    e.preventDefault();

    let data = new FormData(form);
    let perfumes = {
        name: data.get('name'),
        notes: data.get('notes'),
        longevity: data.get('longevity'),
        brand: data.get('brand'),
        qualification: data.get('qualification'),
        description: data.get('description'),
    };

    try {
        let response = await fetch(URL, {
            method: "POST",
            headers: { 'Content-Typer': 'application/json' },
            body: JSON.stringify(perfumes)
        });
        if(!response.ok) {
            throw new Error('Server error');
        }

        let n_perfumes = await response.json();

        // Insert new perfume
        perfumes.push(n_perfumes);
        showPerfumes();

        form.reset();
    } catch(e) {
        console.log(e);
    }
}

async function deletePerfume(e) {
    e.preventDefault();
    try {
        let id = e.target.dataset.perfumes;
        let response = await fetch(URL + id, {method: 'DELETE'});
        if(!response.ok) {
            throw new Error('Recurso no existe');
        }

        // Delete perfume of globar array
        perfume = perfumes.filter(perfumes => perfumes.id != id);
        showPerfumes();
    } catch(e) {
        console.log(e);
    }
}

function showPerfumes() {
    let td = document.querySelector("#perfume-table");
    td.innerHTML = "";

}

getAll();