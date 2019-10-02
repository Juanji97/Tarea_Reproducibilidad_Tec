# Tarea: Comentar el siguiente código.
## Describir brevemente lo que hace cada línea.
## Si no saben que hace una línea, pueden escribirme o googlear la función
## Recuerden hacer comentarios usando #

# Esta línea sirve para activar la paquetería llamada tidyverse, las paqueterías permiten que se activen las funciones que serán utilizadas en el código. Tidyverse es una colección de paquetes de R: “readr” que permite cargar datos , “ggplot2” que permite graficarlos y “dplyr” para manipulación de los mismos. En R para instalarlas se debe usar install.packages("tidyverse")#
library("tidyverse")

# Esta linea permite cargar los datos que se encuentran en línea : https://raw.githubusercontent.com/mine-cetinkaya-rundel/reproducibility-uscots15/master/data/gapminder-5060.csv en formato csv. Los datos presentan una matriz con el nombre del país, el continente donde se encuentra, el año (1952,1957,1962,1967), la expectativa de vida,  el número de habitantes y el PIB per capita# 
gap_5060<-readr::read_csv("https://raw.githubusercontent.com/mine-cetinkaya-rundel/reproducibility-uscots15/master/data/gapminder-5060.csv")

#Esta línea permite filtrar los datos seleccionando dentro de todos los países y hacer un análisis  exclusivo de Canadá# 
gap_5060_CA <- gap_5060 %>% filter(country == "Canada")

# Esta línea permite visualizar un gráfico de líneas de la esperanza de vida en función del año para el país de Canadá.  Esta línea especifica los valores en “x” y “y” para la librería ggplot al momento de graficar. De esta manera podemos evaluar el cambio de la esperanza de vida en Canadá a lo largo del tiempo evaluado ( de 1952 a 1967)#
ggplot(data = gap_5060_CA, aes(x = year, y = lifeExp)) +
  geom_line()

# Esta línea  nos permite modificar los datos que fueron cargados. Precisamente con esta línea modificamos la esperanza de vida que hubo en Canadá en el año 1957 y la establecemos como 69.96. Sin embargo, como inicialmente los datos cargados coinciden con la modificación establecida no habrá ningún cambio. Pero si modificamos el valor de 69.96 por otro valor se modifiría la esperanza de vida para los datos cargados#
gap_5060 <- gap_5060 %>%
  mutate(lifeExp = replace(lifeExp, (country == "Canada" & year == 1957), 69.96)) %>%
  as.data.frame()

# En esta línea se sobreescribe la variable con el filtrado de los nuevos datos y con el cambio realizado en la línea anterior # 
gap_5060_CA <- gap_5060 %>%
  filter(country == "Canada")

# Esta línea permite realizar un gráfico de fluctuaciones de la esperanza de vida en función del año para el país de Canadá. Es decir, como en la gráfica anterior se permite visualizar un gráfico de líneas presentando en el eje “x” los años analizados y en el “y” la esperanza de vida. Con esta gráfica se visualizaría el cambio de datos que se realizó en las líneas anteriores, sin embargo, al coincidir con el valor anterior se presenta la misma gráfica. El comando geom_line() es el que nos permite realizar el gráfico de fluctuaciones, el cual te permite escoger el tipo de letra, tamaño, color y tipo de línea. #
ggplot(data = gap_5060_CA, aes(x = year, y = lifeExp)) +
  geom_line()

#Esta línea permite filtrar los datos seleccionando dentro de todos los países y hacer un análisis  exclusivo de Canadá, México y Estados Unidos#
gap_5060_NA <- gap_5060 %>%
  filter(country %in% c("Canada", "Mexico", "United States"))

# Esta línea grafica los datos agrupados de México, Canadá y EUA.  Se presenta una gráfica como las ya mencionadas anteriormente: de líneas graficando la esperanza de vida en función de los años para los 3 países. Esto permite realizar análisis comparativos#
ggplot(data = gap_5060_NA, aes(x = year, y = lifeExp, color = country)) +
  geom_line()
