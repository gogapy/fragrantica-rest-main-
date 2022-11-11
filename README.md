# Fragrantica API RESTful
A simple API REST for CREATE, REED, UPDATE, DELETE (CRUD) perfumes

## Importar la base de datos
- from PHPMyAdmin import database/perfume_shop.php


## Perfume endpoints
- GET all the perfumes: http://localhost/fragrantica-rest-main/api/perfumes
- GET one perfume by id: http://localhost/fragrantica-rest-main/api/perfumes/:ID
- DELETE a perfume by id: http://localhost/fragrantica-rest-main/api/perfumes/:ID
- POST a perfume: http://localhost/fragrantica-rest-main/api/perfumes
- PUT a perfume: http://localhost/fragrantica-rest-main/api/perfumes/:ID

## Brand endpoints
- GET all the perfumes: http://localhost/fragrantica-rest-main/api/brands
- GET one perfume by id: http://localhost/fragrantica-rest-main/api/brands/:ID
- DELETE a perfume by id: http://localhost/fragrantica-rest-main/api/brands/:ID
- POST a perfume: http://localhost/fragrantica-rest-main/api/brands
- PUT a perfume: http://localhost/fragrantica-rest-main/api/brands/:ID

## Filter endpoint
- GET perfumes by brand http://localhost/fragrantica-rest-main/api/brand/:BRAND