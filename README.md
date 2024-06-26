Se Automatizan varias API tipos REST para verificar y validar el correcto funcionamiento de las tareas asignadas al servicio; se validara apis de tipos get,post,put,delete.

## Consumo del servicio

La url base para consumir el servicio es: https://reqres.in/; dependiendo la ejecución del servicio que se desea realizar cambia el enpoint Consultar usuario= "/api/user/2"; Consultar todos los usuarios = "api/unknown"; Crear usuario = "api/users"; Actualizar Usuario= /api/users/2; Eliminar Usuario= /api/users/2

Request para cada modulos

GET https://reqres.in/api/users/2

POST https://reqres.in/api/users - {"name":"Andres","job":"Tester"}

PUT https://reqres.in/api/users/2 - {"name":"Andres Mieles","job":"QA Analyst"}

DELETE https://reqres.in/api/users/2
