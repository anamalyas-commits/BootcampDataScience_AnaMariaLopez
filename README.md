# Taller 04 – Reducción de Dimensiones y Clustering con Spotify

**Autora:** Ana María López  
**Fecha:** Julio 2026  
**Curso:** Bootcamp Data Science  

---

## 🎯 Objetivo
Aplicar técnicas de aprendizaje no supervisado para segmentar canciones de Spotify según sus características de audio.  
El flujo de trabajo incluye: **Preprocesamiento → Reducción de dimensionalidad (PCA) → Clustering → Interpretación de resultados.**

---

## 📊 Dataset
El archivo `spotify.csv` contiene información sobre canciones y artistas, incluyendo:
- Popularidad del artista y de la canción  
- Energía, danceability, valencia, tempo  
- Características de audio como loudness, speechiness, acousticness  

---

## ⚙️ Metodología
1. **Preprocesamiento:** limpieza y normalización de datos numéricos.  
2. **Reducción de dimensionalidad (PCA):** extracción de los 3 componentes principales.  
3. **Clustering:** aplicación de algoritmos K‑Means y DBSCAN.  
4. **Evaluación:** comparación de resultados mediante el coeficiente *Silhouette*.  
5. **Visualización:** gráficos 2D y 3D para interpretar los grupos.

---

## 📈 Resultados
| Modelo | Silhouette Score | Observaciones |
|---------|------------------|----------------|
| K‑Means | 0.65 | Segmentación estable y clara |
| DBSCAN | 0.48 | Identifica outliers y canciones únicas |

---

## 🧠 Conclusiones
- **K‑Means** ofrece una agrupación más consistente para este dataset.  
- **DBSCAN** es útil para detectar canciones con características atípicas.  
- Los clusters reflejan distintos estilos musicales según energía, tempo y valencia.  
- Comercialmente, estos grupos pueden servir para sistemas de recomendación o curación de playlists.

---

## 🛠️ Tecnologías utilizadas
- Python 3.13  
- Pandas, NumPy  
- Matplotlib, Seaborn  
- Scikit‑learn  

---

## 📁 Estructura del proyecto

---

## 💬 Autor
Desarrollado por **Ana María López**  
Bootcamp Data Science – UNITEC
