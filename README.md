# Diana Rodríguez ,  Juan Ríos , Rosa Muñoz  y Fabiola Winter; A01333408, A01653307, A01337320, A01215361
# Para hablar de lo que realiza el código es importante conocer, en primer lugar, los datos que se cargaron para el análisis. Los datos se presentaron en un archivo csv en línea y tenían una matriz con el nombre del país, el continente donde se encuentra, el año (1952,1957,1962,1967), la expectativa de vida en ese año,  el número de habitantes y el PIB per capita

# En primer lugar, en el código se suben los datos ya mencionados anteriormente. Después decidimos centrarnos en datos precisos, durante todo el código se estudiará la evolución o cambio de la expectetiva de vida durante los años evaluados (1952,1957,1962 y 1967). En primer lugar se decide filtrar los datos de la esperanza de vida para Canadá durante estos años. Se realiza la primera gráfica que muestra un gráfico de líneas de la esperanza de vida en función del año para el país de Canadá, este gráfico nos muestra que la esperanza de vida en Canadá aumentó lentamente pero de manera casi constante durante 12 años puesto que pasó de 68 a 72 años. Esto tiene sentido puesto que la Segunda Guerra Mundial impulsó el desarrollo de nuevas tecnologías, medicamentos e investigaciones que lograron aumentar la esperanza de vida de las personas. 
# Después de esto se dedicaron líneas del código para modificar los datos cargados.  Precisamente se modificó la esperanza de vida que hubo en Canadá en el año 1957 y la establecemos como 69.96. Sin embargo, como inicialmente los datos cargados coinciden con la modificación establecida no habrá ningún cambio. De hecho, se puede observar que la gráfica es exactamente igual que la realizada anteriormente debido a que el cambio en el valor de la esperanza de vida coincidía con el valor anterior por lo que de igual manera se observa el aumento de la esperanza de vida en Canadá. En caso de modificar el valor de 69.96 (esperanza de vida) por otro valor se modificaría la esperanza de vida para los datos cargados.
# Finalmente se filtraron los datos de 3 países (México, Estados Unidos y Canadá) para realizar un análisis comparativo. Esta gráfica nos permite comparar las esperanzas de vida de tres países : México, Canadá y Estados Unidos. Podemos ver que México tiene una esperanza de vida mucho menor a lo largo de los años estudiados, de 52 a 61 años a comparación de una esperanza de vida mayor a 65 años para Estados Unidos y Canadá. Esto se puede explicar debido a un mayor grado de desarrollo de estos países a comparación de México que se encuentra desde esos años en vías de desarrollo. Sin embargo, es importante notar que México presenta un aumento  mucho mayor en la esperanza de vida a comparación de los otros países puesto que presenta una pendiente más elevada. Es decir, que aumenta en casi 10 años mientras que los otros países aumentan su esperanza de vida en 4-5 años. 

# Tarea Reproducibilidad

## Tarea
- Realizar un fork del repositorio: https://github.com/said3427/Tarea_Reproducibilidad_Tec a un repo local por equipo.

- Comentar el archivo Code.R (Recuerda que para comentar código en R se usa `#`).

- Agregar el o los paquetes faltantes para la reproducibilidad del código en el archivo install.R

- Quitar las intrucciones de la tarea en el archivo README.md, agregar una breve descripción del código y gráficos que se generan.

- Realizar un pull request o mandar un mail con su repo a saidmunozmontero@tec.mx

## Rstudio

En la siguiente liga pueden verificar que todo funcione (deben cambiar el nombre de usuario de github `said3427` por el suyo)

RStudio: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/said3427/Tarea_Reproducibilidad_Tec/master?urlpath=rstudio)

## Dudas

- saidmunozmontero@tec.mx
- said3427@gmail.com
