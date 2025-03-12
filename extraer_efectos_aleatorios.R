# ---------- Cómo extraer los efectos aleatorios de un modelo multinivel
# Es un ejemplo 💡

# Modelo multinivel con efectos aleatorios en la intercepción por municipio
modelo <- lmer(gobernanza_local ~ calidad_servicios_publicos + (1 | municipio), data = datos)

summary(modelo) # Conocer efectos fijos globales

# Extraer los efectos aleatorios de los municipios
efectos_aleatorios <- ranef(modelo)

# Efectos aleatorios en data frame
efectos_dataframe <- as.data.frame(efectos_aleatorios$municipio)
efectos_dataframe$municipio <- rownames(efectos_dataframe)


