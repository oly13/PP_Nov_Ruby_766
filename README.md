# Práctica obligatoria evaluable: Procesos del Sistema Operativo
## Normativa de entrga
La entrega de esta práctica es obligatoria debe realizarse **individualmente**. A continuación se detallan otros datos de interés relacionados con la normativa de entrega: 
+ La fecha límite de entrega de la práctica será el **día 14 de Diciembre de 2017 a las 9am**.
+ La entrega de la práctica se hará a través del Campus Virtual, empleando el **formulario** habilitado para ello(se habilitará más adelante, se pondrá una noticia cuando esté disponible). 
+ Se deberá crear un proyecto Eclipse para la práctica cuyo nombre contenga el número de expediente del alumno.
+ Se deberá subir el proyecto Eclipse generado para la resolución de la práctica en un único fichero zip. Este fichero deberá presentar el siguiente   nombre:   “PP_Nov_Ruby_”+”número   de   expediente   del
alumn@”. Las prácticas que no sigan este formato no se evaluarán. Ejemplo: PP_Nov_Ruby_123.zip
+ Se realizará un examen sobre la práctica consistente en introducir modificaciones al código entregado que serán a su vez entregadas de nuevo siguiendo el mismo procedimiento. Se informará más adelante de la fecha del examen.  
## Descripción
La gestión de procesos en ejecución en un sistema operativo requiere mantener la  jerarquía  de procesos que llevan a un proceso  dado. Los procesos pueden iniciar otros procesos. Todo proceso tiene un ID y un parentID, además de la cantidad de memoria reservada para el proceso. El ID identifica unívocamente al proceso, mientras que su ParentID identifica al proceso que lo creó. El proceso con ID 1 no tiene ParentID y es el primer proceso que se crea. Gráficamente se puede representar así:  

   init(ID=1, ParentID=N/A)  
       Chrome(ID=2, ParentID=1)  
          Chrome(ID=5, ParentID=2)  
       Curl(ID=3, ParentID=1)  