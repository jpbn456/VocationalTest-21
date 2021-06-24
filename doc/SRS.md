# Software Requirements Specification
## For <Questionnaire>

Version 0.1

Prepared by <author Oga Luciano, Monetti Rodrigo, Lassalle Evelyn>

<organization>  
	
<date created> 



Tabla de contenidos
=====================================================
* Revision History	
* 1.	Introduction	
*  	1.1	Purpose		
*	1.4	Product Scope	
*	1.5	Reference
* 2.	Overall Description	
*	2.1	Product Perspective	
*	2.2	Product Functions		
*	2.5	Design and Implementation Constraints	
*	2.7	Assumptions and Dependencies	
* 3.	External Interface Requirements	
*	3.1	User Interfaces	
*	3.2	Hardware Interfaces	
*	3.3	Software Interfaces	
*	3.4	Communications Interfaces	
* 4.	System Features	
*	4.1 Functional Requirements	


=====================================================

## Revision History

| Name   | Date    | Reason For Changes  | Version   |
| -------| ------- | ------------------- | --------- |
|        |         |                     |           |
|        |         |                     |           |
|        |         |                     |           |




# 1. Introduction
Este documento es una especificacion de requerimientos de sofware de un sistema de cuestionario (Test Vocacional). En este documento se definirá el alcance del sistema y una descripcion especifica de los requerimientos.


## 1.1 Purpose 
Facilitar al usuario la comprensión de sus propios intereses, habilidades, aptitudes, áreas de conocimiento, preferencias, entre otros aspectos, con el fin de ayudar en la elección de una carrera de estudio a futuro.

## 1.4 Product Scope
El presente documento describe detalladamente la arquitectura y los requerimientos del sistema, el proposito del proyecto es la creacion de un software con la finalidad de ayudar al usuario a la eleccion de una carrera de estudio.

## 1.5 References
 
 * https://github.com/LucianoOga/VocationalTest-21




# 2. Overall Description
## 2.1 Product Perspective
El software sera diseñado para aquellos usuarios que deseen realizar una carrera universitaria y necesiten una ayuda o referencia con respecto a la elección de la misma.

## 2.2 Product Functions
El software tendra diferentes tipos de usuarios...

## 2.5 Design and Implementation Constraints
- Debe utilizar conexión a internet.
- El sistema se diseñara según el modelo cliente/servidor.
- Lenguajes y tecnologías en uso: RUBY,SQL,HTML,SINATRA,DOCKER,CSS

## 2.7 Assumptions and Dependencies
- No poseer una conexión a internet.
- No poseer un dispositivo compatible.



# 4. System Features

## 4.1 Functional Requirements

* Registrarse: El usuario deberá proporcionar su nombre (Necesario para realizar el test).
* Clickear opciones: El usuario podrá seleccionar mediante su mouse la opciones que considera de su agrado en las diferentes preguntas.
* Visualización de los resultados: El usuario podrá visualizar los resultados obtenidos una vez finalizado el test. 
* Visualización de las carreras disponibles en la plataforma y sus descripciones.
* Visualizacion de cantidad de test asociados con una carrera para observar cuales son las carreras mas populares entre los usuarios.
* Visualización de los usuarios que han hecho uso del sistema.

## Users Stories

#1.
 Como Evelyn quiero completar el test vocacional para que pueda tener una idea de mi carrera a futuro.

#2.
Como Profesor quiero que el cuestionario les sea util a mis alumnos para que puedan orientarse con respecto a que estudiar en el futuro.

#3.
Como Rodrigo quiero realizar el cuestionario para que el sistema me indique que poder estudiar en base a mis gustos y conocimientos.

#4.
Como Psicopedagoga quiero poder ver las preferencias de mis alumnos para que pueda prepararlos para su futuro.

#5.
Como Rector quiero ver los resultados de los test para que pueda ir teniendo una idea de las carreras que podrian ser mas concurridas en la universidad.








