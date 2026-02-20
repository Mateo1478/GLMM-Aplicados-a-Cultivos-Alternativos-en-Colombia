# GLMM Aplicados a Cultivos Alternativos en Colombia

Repositorio de trabajo para la tesis de Maestría en Ciencias – Estadística (Universidad Nacional de Colombia, Sede Medellín):

**“Aplicación de Modelos Lineales Generalizados Mixtos a Cultivos Alternativos a Siembras Ilícitas en Colombia”**

Autor: **Mateo Tuberquia Giraldo**  
Director: **Ph.D. Mauricio Alejandro Mazo Lopera**  
Línea: **Modelación Estadística y Aplicaciones**  
Año: **2026**

---

## Objetivo del repositorio
Centralizar la documentación, scripts y resultados reproducibles asociados al análisis de cultivos alternativos en Colombia mediante **Modelos Lineales Generalizados Mixtos (GLMM)**, incluyendo preparación de datos, exploración, ajuste de modelos, diagnóstico y generación de figuras/tablas.

---

# GLMM Aplicados a Cultivos Alternativos en Colombia

Repositorio de trabajo para la tesis de Maestría en Ciencias – Estadística (Universidad Nacional de Colombia, Sede Medellín):

**“Aplicación de Modelos Lineales Generalizados Mixtos a Cultivos Alternativos a Siembras Ilícitas en Colombia”**

Autor: **Mateo Tuberquia Giraldo**  
Director: **Ph.D. Mauricio Alejandro Mazo Lopera**  
Línea: **Modelación Estadística y Aplicaciones**  
Año: **2026**

---

## Objetivo del repositorio

Centralizar la documentación, scripts y resultados reproducibles asociados al análisis de cultivos alternativos en Colombia mediante **Modelos Lineales Generalizados Mixtos (GLMM)**, incluyendo preparación de datos, exploración, ajuste de modelos, diagnóstico y generación de figuras y tablas.

---

## Estructura del repositorio

```text
main/
├─ Import_data/
│  ├─ Datos_agricola_lect.R
│  ├─ Evaluaciones_Agropecuarias_Municipales_2007_2018.csv
│  ├─ Evaluaciones_Agropecuarias_Municipales_2019_2023.csv
│  └─ df_agricola.RData
│
├─ Project/
│  ├─ Exploratory_Analysis.Rmd
│  ├─ Model.Rmd
│  ├─ Detección_de_Cultivos_de_Coca.csv
│  ├─ Municipios_Alt_Temp_completado.xlsx
│  │
│  ├─ dataglmm/
│  │  └─ datos_glmm.RData
│  │
│  ├─ Municipios/
│  │  ├─ Municipios.shp
│  │  ├─ Municipios.dbf
│  │  ├─ Municipios.shx
│  │  ├─ Municipios.prj
│  │  ├─ Municipios.cpg
│  │  └─ Municipios.qmd
│  │
│  ├─ departamentos/
│  │  ├─ departamentos.shp
│  │  ├─ departamentos.dbf
│  │  ├─ departamentos.shx
│  │  ├─ departamentos.prj
│  │  ├─ departamentos.cpg
│  │  ├─ departamentos.sbn
│  │  ├─ departamentos.sbx
│  │  └─ departamentos.shp.xml
│  │
│  ├─ figs/
│  │  └─ (figuras generadas)
│  │
│  └─ tablas/
│     └─ (tablas generadas)
│
└─ README.md
```
> Nota: La estructura puede evolucionar conforme avance la tesis.

---

## Reproducibilidad

### Requisitos
- R (versión sugerida: >= 4.2)
- Paquetes (lista mínima, ajustar según scripts):
  - `dplyr`, `tidyr`, `ggplot2`, `sf`, `lme4`/`glmmTMB`, `broom.mixed`, `performance`, `DHARMa`, `readr`, `readxl`, `writexl`, `openxlsx`

### Ejecución sugerida
1. **Preprocesamiento**
   - `scripts/01_preprocesamiento/...`
2. **EDA**
   - `scripts/02_eda/...`
3. **Modelación GLMM**
   - `scripts/03_glmm/...`
4. **Outputs**
   - Tablas → `tables/`
   - Figuras → `figs/`

---

## Datos
- Los datos pueden estar sujetos a restricciones (tamaño, licencias o confidencialidad).
- Si no es posible publicar datos crudos, este repositorio incluirá:
  - datos procesados anonimizados o muestras, y/o
  - instrucciones para obtener/armar los insumos necesarios.

---

## Resultados
- Figuras: `figs/`
- Tablas: `tables/`
- Manuscrito: `latex/`

---

## Contacto
**Mateo Tuberquia Giraldo**  
(mtuberquiag@unal.edu.co)

