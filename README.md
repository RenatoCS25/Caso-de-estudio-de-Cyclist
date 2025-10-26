# Caso de Estudio Cyclistic

## 1. Introducción  
Proyecto de análisis de datos basado en el caso Cyclistic Bike-Share del programa Google Data Analytics.
El estudio compara el comportamiento entre miembros anuales y usuarios ocasionales para identificar patrones de uso y diseñar recomendaciones orientadas a convertir usuarios casuales en miembros permanentes.

## 2. Pregunta de negocio y preguntas de análisis

### 2.1. Pregunta principal de negocio  
> ¿Cómo puede el equipo de marketing de Cyclistic diseñar estrategias que incentiven a los usuarios ocasionales a convertirse en miembros?

### 2.2. Subpreguntas / preguntas de análisis  
- ¿En qué difieren los patrones de uso (duración del viaje, frecuencia, horario) entre miembros y usuarios ocasionales?  
- ¿Qué tipo de trayectos realizan los usuarios ocasionales (ocio, desplazamientos, fines de semana)?  
- ¿Qué estaciones y rutas son más usadas por cada tipo de usuario?  
- ¿En qué momentos del día/mes se observa mayor uso por cada segmento?  
- ¿Existen días de la semana en que el comportamiento difiera significativamente entre los dos grupos?  
- ¿Qué cambios o incentivos podrían motivar la transición de usuarios ocasionales a miembros?

## 3. Metodología / Proceso de análisis de datos

Se siguió el proceso de análisis propuesto por Google Data Analytics (conocido como método **Ask → Prepare → Process → Analyze → Share → Act**):

| Etapa     | Descripción |
|-----------|--------------|
| **Ask**     | Definir la pregunta de negocio, perfil del usuario objetivo y objetivos del equipo de marketing. |
| **Prepare** | Recolectar los archivos mensuales (12) de datos de viajes (Divvy, 2022). |
| **Process** | Limpieza y transformación: combinación de archivos, filtrado de datos inválidos, creación de nuevas columnas (duración del viaje, mes, día de la semana). |
| **Analyze** | Realizar consultas SQL para comparar miembros vs ocasionales: duración promedio, conteo de viajes, distribución por hora/día/mes, estaciones de inicio/fin. |
| **Share**   | Crear visualizaciones y un dashboard (PDF) con gráficos clave para presentar hallazgos. |
| **Act**     | Formular recomendaciones estratégicas basadas en los resultados, diseñadas para el equipo de marketing de Cyclistic. |

### 3.1. Detalles del procesamiento de datos

- Se unificaron los 12 archivos CSV del 2022 en una tabla maestra (~ 5.6 millones de registros).  
- Se filtraron registros con datos nulos o inválidos.  
- Se crearon nuevas variables:
  - `ride_length_in_mins` (duración del viaje en minutos)  
  - `day_of_week`  
  - `month`  
- Se eliminaron viajes con duración menor de 1 minuto o superiores a 1 día (valores extremos).  
- El dataset final consta de ~ 4.2 millones de registros útiles para análisis.

## 4. Resultados del Análisis Exploratorio

### 4.1. Perfil del Usuario
El análisis revela diferencias significativas entre los **miembros anuales** y los **usuarios ocasionales** del sistema de bicicletas compartidas de Cyclistic:

- **Volumen de viajes:** los miembros representan entre **63 % y 65 %** del total de viajes, mientras que los usuarios ocasionales concentran entre **35 % y 37 %**.
- **Duración del viaje:** los usuarios ocasionales realizan trayectos **más largos en promedio**, lo que sugiere un uso orientado al ocio o turismo.
- **Distribución por hora:**
  - **Miembros:** concentran sus viajes en **horas pico** (mañana y tarde), reflejando desplazamientos diarios hacia el trabajo o estudio.
  - **Ocasionales:** presentan una distribución más amplia a lo largo del día, con mayor actividad en **horarios de descanso y ocio**.
- **Distribución por día de la semana y mes:**
  - Los **usuarios ocasionales** muestran un incremento marcado durante los **fines de semana**.
  - Los **miembros** mantienen un patrón más constante entre los días laborables.
- **Estaciones de inicio y fin:** se observan **diferencias geográficas notables**:
  - Los **usuarios ocasionales** prefieren estaciones ubicadas en **zonas turísticas o recreativas**.
  - Los **miembros** utilizan principalmente estaciones en **áreas residenciales y de oficinas**.

### 4.2. Comparaciones Clave y Patrones Observados
- Los **miembros** realizan **más viajes** pero de **menor duración promedio**.
- Los **usuarios ocasionales** viajan **menos veces**, aunque sus trayectos son **más largos y esporádicos**.
- Las **horas pico (7–9 a.m. y 5–7 p.m.)** concentran la mayoría de los viajes de los miembros, mientras que los usuarios ocasionales usan el servicio principalmente entre **10 a.m. y 6 p.m.**.
- Las **rutas más utilizadas** difieren entre ambos segmentos:
  - **Miembros →** rutas urbanas y regulares.
  - **Ocasionales →** rutas hacia zonas de recreo o parques.

Estos resultados muestran **dos perfiles de usuario claramente distintos**: 
uno enfocado en la **movilidad diaria** y otro en el **ocio ocasional**.  
Estos hallazgos proporcionan una base sólida para **diseñar estrategias de marketing y fidelización diferenciadas** que respondan a las necesidades y comportamientos de cada tipo de usuario.




## 5. Insights Estratégicos

Los resultados del análisis revelan patrones de comportamiento que permiten comprender mejor las diferencias entre **usuarios miembros** y **usuarios ocasionales**, y ofrecen oportunidades para la toma de decisiones estratégicas.

### 🧩 Insight 1: Dos perfiles de usuario claramente diferenciados
El uso del servicio evidencia dos segmentos bien definidos:
- **Miembros anuales:** utilizan la bicicleta como medio de transporte regular, con viajes cortos, frecuentes y concentrados en días laborales.
- **Usuarios ocasionales:** emplean el servicio principalmente por ocio o turismo, con trayectos más largos y mayor actividad durante fines de semana.

➡️ **Implicación:** las estrategias de marketing deben abordar estos perfiles de manera diferenciada, destacando conveniencia y ahorro para los miembros, y experiencias recreativas para los ocasionales.


### 📈 Insight 2: El tiempo y la frecuencia son factores determinantes
Los miembros realizan más viajes, pero de menor duración; los ocasionales menos viajes, pero más extensos.  
Esto refleja una **diferencia en el propósito del uso**: transporte cotidiano frente a uso recreativo.

➡️ **Implicación:** ofrecer **planes flexibles** (por minutos, días o fines de semana) podría atraer a usuarios ocasionales hacia la membresía.



### 🌇 Insight 3: Las horas pico marcan el uso laboral
Los miembros concentran sus viajes en **horas pico (7–9 a.m. y 5–7 p.m.)**, mientras que los usuarios ocasionales muestran picos entre **10 a.m. y 6 p.m.**

➡️ **Implicación:** la empresa puede **optimizar la disponibilidad de bicicletas y mantenimiento** según las franjas horarias más activas de cada grupo.



### 🗺️ Insight 4: La ubicación define el tipo de uso
Las estaciones más utilizadas por los miembros están en **zonas residenciales y de oficinas**, mientras que los usuarios ocasionales prefieren **zonas turísticas y recreativas**.

➡️ **Implicación:** se pueden crear **campañas localizadas** o promociones específicas para cada tipo de estación, potenciando la conversión de usuarios en puntos estratégicos.



### 🕒 Insight 5: La estacionalidad influye en el comportamiento
El uso de bicicletas varía según el mes y la estación del año. Los usuarios ocasionales incrementan su actividad en los meses cálidos, mientras que los miembros mantienen un patrón estable.

➡️ **Implicación:** enfocar **campañas de captación de nuevos miembros** en los meses de mayor actividad turística o recreativa maximiza el impacto.



En conjunto, estos insights muestran que **la conversión de usuarios ocasionales a miembros** depende de entender sus **motivos de uso, ubicación y hábitos temporales**.  
Un enfoque estratégico que combine **segmentación, flexibilidad en planes y marketing dirigido** puede incrementar notablemente la fidelización y el crecimiento de Cyclistic.

## 6. Recomendaciones estratégicas

Basadas en los hallazgos del análisis, se sugieren:

1. **Planes de membresía flexibles** — mensual, estacional, promociones temporales.  
2. **Programas de fidelización** — puntos, recompensas según frecuencia de uso.  
3. **Campañas de marketing diferenciadas** — dirigidas a usuarios ocasionales en horarios de ocio.  
4. **Promociones en horas valle o fines de semana** — ofrecer incentivos para que los ocasionales usen más frecuentemente.  
5. **Experiencia al usuario** — evidenciar ventajas del plan (costo, comodidad, beneficios).  
6. **Alianzas locales** — con negocios cercanos a estaciones para ofrecer descuentos o convenios si se es miembro.

## 7. Limitaciones y consideraciones

- Datos limitados a un solo año (2022); no se puede garantizar que los patrones persistan en otros años.  
- No se incluyeron variables externas como clima, eventos especiales, o cierre de estaciones.  
- Algunas estaciones podrían tener errores en nombres o codificaciones inconsistentes.  
- No todas las rutas posibles están capturadas si los usuarios no retornan al sistema.

## 8. Cómo reproducir el análisis

1. Clona el repositorio:  
   ```bash
   git clone https://github.com/RenatoCS25/Caso-de-estudio-de-Cyclist.git
