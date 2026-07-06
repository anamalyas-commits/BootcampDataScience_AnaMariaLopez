# Taller 05 – Modelos de Regresión

**Autora:** Ana María López  
**Fecha:** Julio 2026  
**Curso:** Bootcamp Data Science  

---

## 🎯 Objetivo
Desarrollar y comparar tres modelos de regresión para predecir el **precio de venta de automóviles usados** utilizando el dataset `cardekho.csv`.  
El propósito es identificar cuál modelo ofrece el mejor desempeño en términos de precisión y capacidad de generalización.

---

## 📊 Dataset
El archivo `cardekho.csv` contiene información sobre autos usados, incluyendo:
- Marca y modelo  
- Año de fabricación  
- Tipo de combustible  
- Transmisión  
- Kilometraje  
- Precio de venta  

---

## ⚙️ Metodología
1. **Exploración y limpieza de datos:**  
   - Revisión de valores nulos y tipos de variables.  
   - Eliminación de columnas irrelevantes.  
   - Codificación de variables categóricas con `get_dummies()`.  

2. **Modelado:**  
   Se entrenaron tres modelos de regresión:
   - Regresión Lineal  
   - Árbol de Decisión  
   - Random Forest  

3. **Evaluación:**  
   Se compararon los modelos utilizando las métricas:
   - Error absoluto medio (MAE)  
   - Error cuadrático medio (MSE)  
   - Coeficiente de determinación (R²)

---

## 📈 Resultados
| Modelo | R² | MAE | MSE |
|---------|----|-----|-----|
| Regresión Lineal | 0.85 | — | — |
| Árbol de Decisión | 0.97 | — | — |
| Random Forest | **0.975** | — | — |

El modelo **Random Forest** obtuvo el mejor desempeño, mostrando una excelente capacidad para capturar relaciones no lineales entre las variables.

---

## 🧠 Conclusiones
- Los modelos basados en árboles (Decision Tree y Random Forest) superan a la Regresión Lineal en precisión.  
- Random Forest es el más robusto y generalizable para este tipo de datos.  
- La Regresión Lineal sigue siendo útil como modelo base por su simplicidad y facilidad de interpretación.  

---

## 🛠️ Tecnologías utilizadas
- Python 3.13  
- Pandas, NumPy  
- Matplotlib, Seaborn  
- Scikit-learn  

---

## 📁 Estructura del proyecto

---

## 💬 Autor
Desarrollado por **Ana María López**  
Bootcamp Data Science – UNITEC  
