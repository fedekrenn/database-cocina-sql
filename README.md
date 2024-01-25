# 📚 Gestión de cocina - DB

DB SQL para gestionar información relacionada con un sistema de gestión de recetas y restaurantes. Este sistema permite almacenar y organizar datos cruciales para la administración de recetas, ingredientes, proveedores, y otros elementos esenciales en el ámbito culinario.

## Objetivo

El propósito principal de esta base de datos es facilitar la gestión eficiente de recetas y restaurantes, proporcionando una estructura robusta y bien organizada para almacenar y recuperar información relevante. Permite a los usuarios realizar operaciones como la creación, actualización y eliminación de recetas, la gestión de ingredientes, así como la asociación entre recetas e ingredientes, sus proveedores, los cocineros y su trabajo en restaurantes, etc

## Tablas

La base de datos está compuesta por las siguientes tablas:

- `detalle_categoria`: Se almacena información sobre las distintas categorías de productos que un proveedor nos brinda. Por ejemplo, Carnes, Lácteos, Verduras, etc.
- `detalle_especialidad`: Contiene datos relacionados con las especialidades de cada cocinero, como por ejemplo si prepara comida mexicana o italiana. Varios cocineros pueden formar parte de la misma especialidad.
- `restaurante`: Aquí encontramos detalles acerca de los restaurantes que forman la base de datos. Varios cocineros pueden pertenecer a un mismo restaurante.
- `cocinero`: Información sobre los cocineros que forman parte de los restaurantes. Cada cocinero tiene una especialidad y trabaja en un solo restaurante.
- `receta`: Aquí almacenamos información sobre las recetas, tal como el nombre, una breve descripción, dificultad, etc. Según el modelo de negocio elegido, una receta sólo puede ser preparada por un cocinero. El campo cantidad de ingredientes no es necesario que se pase cuando se carga una receta, este valor por defecto es 0 y la base de datos tiene la capacidad de ir calculando automáticamente cuando más adelante se registren los ingredientes que forman parte de la misma.
- `proveedor`: Contiene información sobre los proveedores, los cuales nos brindan los ingredientes. Cada proveedor trabaja bajo una categoría.
- `ingrediente`: Aquí se almacena información sobre los ingredientes que forman parte de las recetas. Cada ingrediente es obtenido a través de un único proveedor.
- `receta_ingrediente`: Esta tabla es la encargada de relacionar las recetas con los ingredientes que las componen. Cada receta puede tener varios ingredientes, y cada ingrediente puede formar parte de varias recetas.

## Modelo ER

![image](https://github.com/fedekrenn/database-cocina-sql/assets/90353038/e8dc4f9d-a4d4-4ddb-96ef-881acb70981f)


## Triggers

- `trg_receta_insert` y `trg_receta_update`: Identifica tanto una inserción de datos como una actualización en la tabla "receta" y registra en “log_receta” información sobre el usuario, la fecha y la hora de la operación.

- `trg_cocinero_insert`, `trg_cocinero_update` y `trg_cocinero_delete`: El disparador puede detectar cambios de datos de cocineros (carga de uno nuevo, modificación de datos o eliminación del mismo) y registra en la tabla “log_cocinero” información sobre el usuario, la fecha y la hora de la operación.
- `trg_sumar_cantidad_ingredientes` y `trg_restar_cantidad_ingredientes`: Estos disparadores están atentos a la carga de datos de ingredientes que forman partes de recetas en la tabla “receta_ingrediente”, cuando se especifica que un ingrediente forma parte de la receta suma “uno” a la cantidad de ingredientes que posee esa receta específica en la tabla “recetas”

#### Objetivos:
- Registrar en una tabla de log información sobre las operaciones de inserción, actualización y eliminación de cocineros y recetas.
- Actualizar automáticamente la cantidad de ingredientes que posee una receta
- Abstraer al usuario de que al momento de cargar una receta tenga que saber de antemano cuantos ingredientes lleva.

## Vistas

- `vw_cocineros`: La vista muestra información detallada sobre los cocineros recolectando información de otras tablas, como el detalle de su especialidad y el nombre del restaurante.
- `vw_recetas_dificiles`: La vista “vw_recetas_dificiles” presenta las recetas con un nivel de dificultad superior al promedio.
- `vw_comidas_rapidas`: Se enumeran los restaurantes que preparan las recetas más rápidas (menos de 30 minutos) y sus cocineros asociados.
- `vw_top_cocineros`: La vista presenta información sobre los tres mejores cocineros según la clasificación de los restaurantes en los que trabajan.
- `vw_recetas_ingredientes`: La vista muestra el listado de recetas junto con los ingredientes que la componen y su información específica de cantidad en gramos.

## Funciones

- `fn_cantidad_recetas_cocinero`: La función “fn_cantidad_recetas_cocinero” recibe el DNI de un cocinero y devuelve la cantidad de recetas que tiene a su cargo.
- `fn_calcular_antiguedad`: La función toma como entrada el DNI de un cocinero y devuelve la antigüedad en años que el mismo posee en el restaurante.

## Stored Procedures

- `sp_ordenar_tabla`: Permite obtener información según un dato específico y mostrarlo en orden ascendente o descendente según es especifique.
- `sp_modificar_tabla`: Se utiliza para insertar o eliminar información, dependiendo de la operación indicada.

## DCL

Para el manejo de la base de datos se crean 2 usuarios:

- `usuario_lectura'@'localhost`
- `usuario_modificacion'@'localhost`

Con ambos se puede acceder a leer la información de los datos de la base, pero sólo el segundo puede realizar modificaciones en la misma como cargar nueva info o modificarla.

## Reportes

Utilizando la herramienta PowerBI se realiza una extracción de datos para mostrar un gráfico que compara las recetas junto a una relación entre el tiempo que conlleva prepararla y la cantidad de ingredientes que la misma posee:

![image](https://github.com/fedekrenn/database-cocina-sql/assets/90353038/bedfc8c7-621c-4394-9e0c-2fab2f6b80b3)

<br>


## 🙋‍♂️ Hola, Soy Federico Krenn
:nerd_face: Desarrollador web Fullstack
<br>
👨‍🎓 Realizando la Tecnicatura en Desarrollo Web en ISPC y Tecnicatura en Software Libre en la UNL
<br>
📫 Conectemos en Linkedin: https://www.linkedin.com/in/fkrenn/
