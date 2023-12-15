Documentación del Proyecto de Base de Datos

1. Tablas Originales

1.1. Tabla Detalle Categoria

La tabla Detalle Categoria almacena información sobre las distintas categorías de productos de un proveedor.

Campos:
- id_categoria: Identificador único de la categoría.
- nombre: Nombre de la categoría.

1.2. Tabla Detalle Especialidad

La tabla Detalle Especialidad contiene datos relacionados con las especialidades culinarias.

Campos:
- id_especialidad: Identificador único de la especialidad.
- nombre: Nombre de la especialidad.

1.3. Tabla Restaurante

La tabla Restaurante guarda detalles acerca de los restaurantes.

Campos:
- id_restaurante: Identificador único del restaurante.
- nombre: Nombre del restaurante.
- direccion: Dirección física del local.
- clasificacion: Clasificación basada en las estrellas.

...

2. Vistas

2.1. vw_cocineros

La vista vw_cocineros muestra información detallada sobre los cocineros, incluyendo su DNI, nombre, apellido, fecha de nacimiento, especialidad y restaurante al que pertenecen.

Campos:
- dni: DNI del cocinero.
- nombre: Nombre del cocinero.
- apellido: Apellido del cocinero.
- fecha_nacimiento: Fecha de nacimiento del cocinero.
- especialidad: Especialidad culinaria del cocinero.
- restaurante: Nombre del restaurante al que pertenece el cocinero.

2.2. vw_recetas_dificiles

La vista vw_recetas_dificiles presenta las recetas con un nivel de dificultad superior al promedio.

Campos:
- nombre: Nombre de la receta.
- descripcion: Descripción de la receta.
- dificultad: Nivel de dificultad de la receta.

2.3. vw_recetas_ingredientes

La vista vw_recetas_ingredientes muestra las recetas junto con la lista de ingredientes y sus respectivas cantidades.

Campos:
- receta: Nombre de la receta.
- ingrediente: Nombre del ingrediente.
- cantidad: Cantidad del ingrediente en gramos.

2.4. vw_comidas_rapidas

La vista vw_comidas_rapidas enumera los restaurantes, recetas y cocineros asociados a las comidas que se preparan en menos de 30 minutos.

Campos:
- restaurante: Nombre del restaurante.
- receta: Nombre de la receta.
- tiempo: Tiempo de preparación en minutos.
- cocinero: Nombre completo del cocinero.

2.5. vw_top_cocineros

La vista vw_top_cocineros presenta información sobre los tres mejores cocineros según la clasificación de los restaurantes en los que trabajan.

Campos:
- nombre: Nombre del cocinero.
- apellido: Apellido del cocinero.
- especialidad: Especialidad culinaria del cocinero.
- restaurante: Nombre del restaurante.
- clasificacion_restaurante: Clasificación del restaurante.

3. Funciones Personalizadas

3.1. fn_cantidad_recetas_cocinero

La función fn_cantidad_recetas_cocinero recibe como parámetro el DNI de un cocinero y devuelve la cantidad de recetas que tiene a su cargo.

Parámetros:
- P_DNI_COCINERO: DNI del cocinero.

3.2. fn_obtener_telefono_proveedor

La función fn_obtener_telefono_proveedor toma como entrada el email de un proveedor y devuelve su número de teléfono.

Parámetros:
- P_EMAIL_PROVEEDOR: Email del proveedor.

4. Stored Procedures

4.1. sp_ordenar_tabla

El stored procedure sp_ordenar_tabla permite ordenar una tabla según un campo específico y en un orden ascendente o descendente.

Parámetros:
- P_NOMBRE_TABLA: Nombre de la tabla a ordenar.
- P_CAMPO_ORDEN: Campo por el cual se quiere ordenar.
- P_ORDEN: Orden de la clasificación (ASC o DESC).

4.2. sp_modificar_tabla

El stored procedure sp_modificar_tabla se utiliza para insertar o eliminar registros en una tabla, dependiendo de la operación indicada.

Parámetros:
- P_OPERACION: 1 para insertar, 2 para eliminar.
- P_NOMBRE_TABLA: Nombre de la tabla afectada.
- P_VALORES_INSERTAR: En caso de inserción, los valores a insertar.
- P_CONDICION_ELIMINAR: En caso de eliminación, la condición para eliminar.

5. Triggers

5.1. log_receta

5.1.1. Descripción:
El trigger log_receta se dispara tanto antes de una actualización (BEFORE) como después de una inserción (AFTER) en la tabla "receta". Registra en la tabla log_receta información sobre el usuario, la fecha y la hora de la operación.

5.1.2. Objetivos:
- Mantener un registro de las operaciones realizadas en la tabla "receta".
- Almacenar información sobre quién realiza las operaciones y cuándo.

5.2. log_cocinero

5.2.1. Descripción:
El trigger log_cocinero se dispara tanto antes de una actualización (BEFORE) como después de una inserción (AFTER) en la tabla "cocinero". Registra en la tabla log_cocinero información sobre el usuario, la fecha y la hora de la operación.

5.2.2. Objetivos:
- Mantener un registro de las operaciones realizadas en la tabla "cocinero".
- Almacenar información sobre quién realiza las operaciones y cuándo.


