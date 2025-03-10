# Caso-de-estudio-de-Cyclist
Cyclistic, un programa de bicicletas compartidas con 5.800 bicicletas y 600 estaciones de anclaje, ofrece opciones inclusivas como bicicletas reclinables y triciclos de mano. La mayoría de los usuarios viajan en bicicleta por ocio, y un 30% viaja al trabajo. La empresa ofrece precios flexibles: viajes individuales, pases de un día completo (ciclistas ocasionales) y membresías anuales (miembros).
Los analistas financieros descubrieron que los miembros anuales son más rentables. El director de marketing, Moreno, tiene como objetivo convertir a los ciclistas ocasionales en miembros en lugar de apuntar a nuevos clientes. Para lograrlo, el equipo de marketing analizará datos históricos de viajes en bicicleta para comprender las diferencias entre los usuarios, los incentivos para la membresía y el impacto de los medios digitales.
## Escenario
Asumiendo que soy un analista de datos junior que trabaja en el equipo de analistas de marketing de Cyclistic, una empresa de bicicletas compartidas de Chicago. El director de marketing cree que el éxito futuro de la empresa depende de maximizar la cantidad de membresías anuales. Por lo tanto, mi equipo quiere entender cómo los ciclistas ocasionales y los miembros anuales usan las bicicletas de Cyclistic de manera diferente. A partir de estos conocimientos, mi equipo diseñará una nueva estrategia de marketing para convertir a los ciclistas ocasionales en miembros anuales. Pero primero, los ejecutivos de Cyclistic deben aprobar nuestras recomendaciones, por lo que deben estar respaldadas por información convincente sobre los datos y visualizaciones de datos profesionales.
## 1. Pregunta
### Tarea de negocios
Idear estrategias de marketing para convertir a los ciclistas ocasionales en miembros.
### Preguntas de análisis
Tres preguntas guiarán el futuro programa de marketing:
1.	¿En qué forma diferente utilizan las bicicletas Cyclistic los miembros anuales y los ciclistas ocasionales?
2.	¿Por qué los ciclistas ocasionales comprarían membresías anuales de Cyclistic?
3.	¿Cómo puede Cyclistic utilizar los medios digitales para influir en los ciclistas ocasionales para que se conviertan en miembros?
Moreno me ha asignado la primera pregunta para responder: ¿En qué forma diferente utilizan las bicicletas Cyclistic los miembros anuales y los ciclistas ocasionales?
## 2. Preparar
### Fuente de datos
Usaré los datos históricos de viajes de Cyclistic para analizar e identificar tendencias desde enero de 2022 hasta diciembre de 2022, que se pueden descargar desde divvy_tripdata. Motivate International Inc. ha puesto a disposición los datos bajo esta licencia.
Estos son datos públicos que se pueden usar para explorar cómo los diferentes tipos de clientes usan las bicicletas de Cyclistic. Pero tenga en cuenta que los problemas de privacidad de los datos prohíben el uso de la información de identificación personal de los ciclistas. Esto significa que no podremos vincular las compras de pases con los números de tarjetas de crédito para determinar si los ciclistas ocasionales viven en el área de servicio de Cyclistic o si han comprado varios pases individuales.

### Organización de los datos
Hay 12 archivos con la convención de nomenclatura AAAAMM-divvy-tripdata y cada archivo incluye información de un mes, como el identificador del viaje, el tipo de bicicleta, la hora de inicio, la hora de finalización, la estación de inicio, la estación de finalización, la ubicación de inicio, la ubicación de finalización y si el ciclista es miembro o no. Los nombres de columna correspondientes son ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng y member_casual.
## 3.Procesar 
### Combinación de datos
Las 12 tablas de enero a diciembre de 2022 se apilaron y combinaron en una sola tabla. La tabla consta de 5.667.717 filas.
### Exploración de datos
Ejecuté las consultas para cada columna de izquierda a derecha para determinar el tipo de datos y descubrir valores faltantes, valores atípicos, inconsistencias y errores dentro del conjunto de datos.
### Limpieza de datos
Antes de analizar los datos, se limpió el conjunto de datos:
•	Se eliminaron los viajes con valores nulos.
•	Se agregaron 3 columnas: 'ride_length_in_mins', 'day_of_week' y 'month'.
•	Se excluyeron los viajes con una duración inferior a un minuto o superior a un día.
En total, se obtuvieron 4.224.062 filas, lo que significa que se eliminaron 1.443.655 filas.
## 4.Analizar
En primer lugar, se compara a los miembros y ciclistas ocasionales por el tipo de bicicletas que utilizan.

![image](https://github.com/user-attachments/assets/a60b8e56-c8f0-4d2d-a28a-9efa6117eed4)




### 4.1. Total de Recorridos en 2024´
La siguiente figura muestra el porcentaje de recorridos realizados por miembros de Cyclistic y ciclistas ocasionales en 2024.







Los miembros ciclistas representaron aproximadamente 63,87% del total de recorridos, mientras que los ciclistas ocasionales representaron el 36,13% del total de recorridos en 2024.
### 4.2. Tipo de Bicicleta









Existen tres tipos de bicicletas: clásicas, eléctricas y con anclaje.
Los ciclistas miembros y los ciclistas ocasionales prefieren las bicicletas clásicas a las eléctricas.
Los ciclistas ocasionales también han utilizado las bicicletas con anclaje.
### 4.3. Duración media del viaje
La duración media del viaje se representa gráficamente en función del tipo de usuario (miembro o ocasional).









Los miembros ciclistas pueden andar en bicicleta durante unos 12,6 minutos de media, mientras que los ciclistas ocasionales tienen una duración media de 24.2 minutos. Por tanto, la duración de los recorridos de los ciclistas ocasionales es aproximadamente el doble que la de los miembros.
### 4.4. Viajes realizados en un mes, dia de semana y horas 
La preferencia de la actividad ciclista se puede determinar dibujando el gráfico de los viajes realizados por mes , dia y horas 
 
 
 

Meses: En cuanto a los viajes mensuales, tanto los ciclistas ocasionales como los miembros muestran un comportamiento similar, con más viajes en primavera y verano pero menos en invierno. La brecha entre viajeros ocasionales y miembros es más estrecha en el mes de Octubre en verano.
Días de la semana: Cuando se comparan los días de la semana, se descubre que los pasajeros ocasionales hacen más viajes los fines de semana, mientras que los miembros muestran un descenso durante el fin de semana en contraste con los otros días de la semana.
Horas del día: Los miembros muestran 2 picos a lo largo del día en términos de número de viajes. Uno es temprano en la mañana, alrededor de las 6 am a las 8 am, y el otro es en la tarde, alrededor de las 4 pm a las 6 pm, mientras que el número de viajes de los pasajeros ocasionales aumenta constantemente durante el día hasta la noche y luego disminuye después.
De las observaciones anteriores podemos inferir que los miembros pueden estar usando bicicletas para ir y volver del trabajo durante la semana, mientras que los ciclistas ocasionales usan bicicletas durante todo el día, con mayor frecuencia los fines de semana, para fines de ocio. Ambos son más activos en verano y primavera.
### 4.5. Duración media del viaje por mes, días de semana y horas
Se compara la duración de los viajes para encontrar las diferencias en el comportamiento de los pasajeros ocasionales y los miembros.
 
 


 
Tenga en cuenta que los ciclistas ocasionales tienden a andar en bicicleta más tiempo que los miembros en promedio. La duración del viaje promedio de los miembros no cambia a lo largo del año, la semana o el día. Sin embargo, existen variaciones en la duración del viaje de los ciclistas ocasionales. En primavera y verano, los fines de semana y de 10 a 14 horas durante el día, recorren distancias mayores. Entre las cinco y las ocho de la mañana, realizan viajes breves.
Estos hallazgos llevan a la conclusión de que los viajeros ocasionales viajan más tiempo (aproximadamente el doble) pero con menos frecuencia que los miembros. Hacen viajes más largos los fines de semana y durante el día fuera de las horas de viaje y en la temporada de primavera y verano, por lo que podrían estar haciéndolo con fines recreativos.
### 4.6. Estaciones de partida
Para entender mejor las diferencias entre los usuarios ocasionales y los usuarios afiliados, se pueden analizar las ubicaciones de las estaciones de partida y de llegada. Se consideran las estaciones con más viajes mediante filtros para extraer las siguientes conclusiones.
 
Los pasajeros ocasionales con frecuencia han comenzado sus viajes desde las estaciones cercanas a museos, parques, playas, puertos y acuarios, mientras que los miembros han comenzado sus viajes desde estaciones cercanas a universidades, áreas residenciales, restaurantes, hospitales, supermercados, teatros, escuelas, bancos, fábricas, estaciones de tren, parques y plazas.



## 5.Compartir
Ver Análisis del uso de bicicletas Dashboard.
## 6.Actuar
A partir del análisis anterior, podemos diseñar estrategias de marketing para convertir a ciclistas ocasionales en miembros de Cyclistic. Este es mi enfoque sugerido:
### 1. Personalización de la membresía
Ofrecer una variedad de personalizaciones de membresía: anual, mensual y diaria. Por ejemplo, $365/año, $45/mes, $3/día. Los usuarios podrán elegir su tipo de membresía según sus propias preferencias. Al presentar planes de membresía a corto plazo con precios adecuados, podemos satisfacer las necesidades de los ciclistas que podrían no necesitar una membresía anual.
### 2.Descuentos de membresía grupal
Ofrecer planes con descuento para amigos, estudiantes y familias puede alentar las membresías colectivas. Además, alienta a los usuarios a andar en bicicleta juntos y fortalecer los vínculos entre las personas.
### 3.Sistema de puntos de fidelidad de membresía
Implementar un sistema de puntos de fidelidad de membresía para que los usuarios acumulen puntos por cada recorrido. Se otorgarán recompensas como el descuento de membresía en función de la cantidad de puntos acumulados. Esto alentará a los ciclistas a usar el servicio con mayor frecuencia, lo que impulsará la participación y la lealtad.
### 4.Eventos exclusivos para miembros
Organiza eventos exclusivos para miembros, como paseos en grupo, desafíos de exploración urbana o eventos temáticos de ciclismo. Este enfoque no solo fomenta que los miembros actuales realicen más paseos, sino que también incita a los ciclistas ocasionales a unirse como miembros para participar en estas experiencias únicas.
### 5.Campañas estacionales
Lanza campañas estacionales ofreciendo descuentos por tiempo limitado, ofertas especiales para los días de semana o duraciones de paseo extendidas para los miembros durante estas temporadas para ayudar a que el servicio sea más sostenible y manejable.
### 6.Interacción en las redes sociales
Utiliza los medios digitales, incluidas las plataformas de redes sociales, para interactuar con los ciclistas ocasionales y los miembros potenciales. Comparte historias de éxito, testimonios y contenido generado por los usuarios de los miembros de Cyclistic que se han beneficiado de la membresía. Crea contenido visualmente atractivo que muestre la alegría de andar en bicicleta durante diferentes estaciones y escenarios, incitando a los ciclistas ocasionales a convertirse en miembros.

