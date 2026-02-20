library(tidyverse)
library(janitor)

# Leer archivos y limpiar nombres de columnas
df1 <- read_csv("Evaluaciones_Agropecuarias_Municipales_2019_2023.csv", show_col_types = FALSE) %>%
  clean_names()

df2 <- read_csv("Evaluaciones_Agropecuarias_Municipales_2007_2018.csv", show_col_types = FALSE) %>%
  clean_names()


df2 %>% filter(cultivo=="CACAO") %>% count(ano)
df1 %>% filter(cultivo=="Cacao") %>% count(ano)



# Renombrar columnas de df2 para que coincidan con df1
df2 <- df2 %>%
  rename(
    codigo_dane_departamento = cod_dep,
    codigo_dane_municipio = cod_mun,
    grupo_cultivo = grupo_de_cultivo,
    subgrupo = subgrupo_de_cultivo,
    desagregacion_cultivo = desagregacion_regional_y_o_sistema_productivo,
    area_sembrada = area_sembrada_ha,
    area_cosechada = area_cosechada_ha,
    produccion = produccion_t,
    rendimiento = rendimiento_t_ha,
    estado_fisico_del_cultivo = estado_fisico_produccion,
    nombre_cientifico_del_cultivo = nombre_cientifico,
    ciclo_del_cultivo = ciclo_de_cultivo
  )

# Asegurarse de que las columnas estén en el mismo orden y todas presentes
cols_final <- union(names(df1), names(df2))

df1 <- df1 %>%
  add_column(
    !!!set_names(
      rep(list(NA), length(setdiff(cols_final, names(df1)))),
      setdiff(cols_final, names(df1))
    )
  ) %>%
  select(all_of(cols_final))

df2 <- df2 %>%
  add_column(
    !!!set_names(
      rep(list(NA), length(setdiff(cols_final, names(df2)))),
      setdiff(cols_final, names(df2))
    )
  ) %>%
  select(all_of(cols_final))


# Estandarizar nombres de cultivos
df1 <- df1 %>%
  mutate(
    cultivo = str_to_title(cultivo),
    codigo_dane_departamento = as.character(codigo_dane_departamento),
    codigo_dane_municipio = as.character(codigo_dane_municipio)
  )

df2 <- df2 %>%
  mutate(
    cultivo = str_to_title(cultivo),
    codigo_dane_departamento = as.character(codigo_dane_departamento),
    codigo_dane_municipio = as.character(codigo_dane_municipio)
  )

# Unir y eliminar duplicados
df_agricola <- bind_rows(df1, df2) %>% distinct()

# Vista rápida
glimpse(df_agricola)

save(df_agricola, file = "df_agricola.RData")

