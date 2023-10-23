# Investigación Rwanda - Datos del FMI 
# Seminario Costa Rica y el Mundo - GRUPO 5


# Datos - PIB PER CAPITA
año <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022)
pib_per_capita_usd <- c(265, 249, 112, 227, 206, 242, 251, 269, 255, 239, 235, 250, 270, 325, 358, 427, 530, 565, 594, 651, 706, 704, 725, 734, 729, 757, 769, 806, 774, 821, 966)

# plot
plot(año, pib_per_capita_usd, type = "l", xlab = "Año", ylab = "PIB Per Capita", main = "Evolución del PIB Per Capita")

# Generar gráfico en ggplot2
library(ggplot2)
df <- data.frame(año, pib_per_capita_usd)
ggplot(data = df, aes(x = año, y = pib_per_capita_usd)) + geom_line() +
  labs(x = "Año", y = "PIB Per Capita Rwanda", title = "Evolución del PIB Per Capita: Rwanda 1980-2022")


# Datos población urbana - URBAN POPULATION
years <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
urban_population <- c(481485, 578074, 571603, 559420, 763822, 955735, 1048216, 1126468, 1210497, 1301768, 1404622, 1448333, 1486527, 1526528, 1568217, 1611415, 1655603, 1700405, 1745731, 1791521, 1836678, 1881346, 1928885, 1979769, 2034934, 2094446, 2156849, 2222128, 2291674, 2364984)

# Crear un dataframe con los datos
data <- data.frame(
  Years = c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021),
  Urban_Population = c(481485, 578074, 571603, 559420, 763822, 955735, 1048216, 1126468, 1210497, 1301768, 1404622, 1448333, 1486527, 1526528, 1568217, 1611415, 1655603, 1700405, 1745731, 1791521, 1836678, 1881346, 1928885, 1979769, 2034934, 2094446, 2156849, 2222128, 2291674, 2364984)
)

# Crear el gráfico de líneas con ggplot2
ggplot(data, aes(x = Years, y = Urban_Population)) +
  geom_line() +
  labs(x = "Año", y = "Población Urbana", title = "Evolución de la Población Urbana 1992-2021") +
  theme_minimal()


# Datos - INCIDENCIA VIH
country <- "Rwanda"
years <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
incidence_hiv <- c(3.93, 4.02, 4.17, 4.24, 4.19, 4.06, 3.8, 3.47, 3.17, 2.9, 2.69, 2.5, 2.27, 2.07, 1.86, 1.44, 1.22, 1.09, 1.04, 0.86, 0.84, 0.75, 0.66, 0.59, 0.57, 0.48, 0.43, 0.37, 0.34, 0.34)

# Crear un dataframe
data <- data.frame(Year = years, Incidence = incidence_hiv)

# Cargar las librerías
library(ggplot2)

# Crear un gráfico de líneas con ggplot2
ggplot(data, aes(x = Year, y = Incidence)) +
  geom_line() +
  labs(x = "Año", y = "Incidencia de VIH (por 1,000 población no infectada)", title = paste("Incidencia de VIH (1992-2021) en", country)) +
  theme_minimal()


# Datos - ELECTRICIDAD
country <- "Rwanda"
years <- c(1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
access_to_electricity <- c(1.027835965, 2.174127579, 3.31557703, 6.2, 4.719171047, 6.046956062, 7.373200893, 8.704913139, 4.8, 11.41254044, 12.79682064, 6, 15.61321831, 9.7, 10.8, 17.5, 15.2, 19.8, 22.8, 29.37, 34.1, 37.95683289, 46.6, 45.19010925, 48.70043564)

# Crear un dataframe
data <- data.frame(Year = years, Access = access_to_electricity)

# Cargar las librerías
library(ggplot2)

# Crear un gráfico de líneas con ggplot2
ggplot(data, aes(x = Year, y = Access)) +
  geom_line() +
  labs(x = "Año", y = "Acceso a la electricidad (% de la población)", title = paste("Acceso a la electricidad (1997-2021) en", country)) +
  theme_minimal()



# Datos - CRECIMIENTO POBLACIONAL
years <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022)
population_growth <- c(2.265543075, 3.18151531, -16.04915262, -16.88062967, 16.62550198, 13.24706725, 3.182439182, 1.192435842, 1.245731257, 1.395302279, 1.787981976, 2.310404512, 2.579209778, 2.631693016, 2.664807191, 2.693706726, 2.681598665, 2.640570296, 2.607105103, 2.565509609, 2.459840406, 2.37929152, 2.377534023, 2.385955685, 2.44299699, 2.478807852, 2.435038415, 2.390794366, 2.39670705, 2.371751548, 2.311603239)

# Crear un dataframe
data <- data.frame(Year = years, PopulationGrowth = population_growth)

# Crear un gráfico de líneas con ggplot2
ggplot(data, aes(x = Year, y = PopulationGrowth)) +
  geom_line() +
  labs(x = "Año", y = "Crecimiento de la población (anual %)", title = "Crecimiento de la población 1992-2021") +
  theme_minimal()



# Datos - GDP
years <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022)
gdp_per_capita <- c(366.0553249, 325.8397151, 190.3332045, 304.7054574, 290.922001, 290.1198036, 305.928008, 315.457508, 337.6319107, 361.2032358, 401.6081453, 401.0787412, 419.9768404, 447.4305343, 475.8639353, 498.5752875, 539.5580535, 558.3315416, 583.8611618, 614.3616031, 651.2338063, 665.9365306, 690.3948658, 733.8228504, 758.8701429, 769.432795, 815.050688, 871.1098908, 821.7850596, 889.8120428, 940.4066789)

# Crear un dataframe
data <- data.frame(Year = years, GDPperCapita = gdp_per_capita)

# Crear un gráfico de líneas con ggplot2
ggplot(data, aes(x = Year, y = GDPperCapita)) +
  geom_line() +
  labs(x = "Año", y = "PIB per cápita (USD)", title = "PIB per cápita a lo largo de 1992-2022") +
  theme_minimal()



# Crear el dataframe gni_data - GNI
gni_data <- data.frame(
  Año = 1992:2022,
  GNI = c(300, 250, 130, 220, 200, 220, 230, 260, 270, 270, 260, 250, 270, 310, 350, 400, 480, 540, 590, 640, 690, 710, 720, 730, 730, 720, 770, 810, 760, 840, 930)
)

# Crear el dataframe gdp_data
gdp_data <- data.frame(
  Año = 1992:2022,
  GDP = c(366.0553249, 325.8397151, 190.3332045, 304.7054574, 290.922001, 290.1198036, 305.928008, 315.457508, 337.6319107, 361.2032358, 401.6081453, 401.0787412, 419.9768404, 447.4305343, 475.8639353, 498.5752875, 539.5580535, 558.3315416, 583.8611618, 614.3616031, 651.2338063, 665.9365306, 690.3948658, 733.8228504, 758.8701429, 769.432795, 815.050688, 871.1098908, 821.7850596, 889.8120428, 940.4066789)
)

# Ver los primeros registros de cada dataframe
head(gni_data)
head(gdp_data)


# Cargar las librerías
library(ggplot2)
library(dplyr)

# gni_data y gdp_data con las columnas "Año" y "Monto en Millones de USD"
# Merge de los df's
merged_data <- bind_cols(gni_data, gdp_data)

# Renombrar las columnas
colnames(merged_data) <- c("Año", "GNI", "GDP")

# gráfico de línea
ggplot(merged_data, aes(x = Año)) +
  geom_line(aes(y = GNI, color = "GNI")) +
  geom_line(aes(y = GDP, color = "GDP")) +
  scale_color_manual(values = c("GNI" = "blue", "GDP" = "red")) +
  labs(x = "Año", y = "Millones de USD", title = "Comparación de GNI y GDP per cápita 1992-2022") +
  theme_minimal()


# Creación del dataframe
df <- data.frame(
  Año = c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022),
  PCoPCn = c(2200456499201, 2041216933446, 1025766288712, 1400449987875, 1564949022732, 1802060040293, 1949093056398, 2018771403097, 2215005874997, 2381794810255, 2683455703121, 2713359534303, 2925005741706, 3201699581706, 3594060663103, 3853997465665, 4177930351717, 4490838817403, 4808802848932, 5226045368113, 5663797723825, 5922442431253, 6339674230113, 6936855147588, 7392202012685, 7694234000000, 8288401721444, 9019584381833, 8630863169428, 9653778873995, 10297655488285)
)

# Montar gráfico
ggplot(data = df, aes(x = Año, y = PCoPCn)) +
  geom_line(color = "blue") +
  labs(
    x = "Año",
    y = "PCoPCn en USD",
    title = "Precios Corrientes vs Precios Constantes en Rwanda (1992-2022)"
  ) +
  theme_minimal()

