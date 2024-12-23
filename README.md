# Spotify Song Analysis
By James Weaver

# Introduction
This project explores a Spotify dataset, analyzing song characteristics such as popularity, tempo, danceability, and energy. Through preprocessing, data cleaning, and exploratory data analysis (EDA), this project uncovers patterns and trends in music features that influence song success. The insights provide valuable context for the music industry, playlist curators, and listeners.

# Files
1. spotify_song_analysis.ipynb: Jupyter Notebook containing all Python code, visualizations, and analysis.
2. spotify.csv: The dataset with metadata and audio features for 265 songs.
3. images/: Contains saved visualizations of distributions, correlations, and trends.
4. README.md: This documentation detailing the project.

# Goals
1. Explore trends in key features such as popularity, tempo, and energy.
2. Analyze the distribution and correlation of song characteristics.
3. Identify factors contributing to high popularity scores.
4. Visualize data to uncover patterns in music features.

# Steps in the Analysis
1. **Data Preprocessing**
- Loading Dataset: The dataset was imported using pandas for manipulation.
- Missing Data Check: Columns with missing, blank, or placeholder values were identified and cleaned.
- Date Conversion: Converted release dates to datetime for better analysis.
2. **Descriptive Statistics**
- Summarized numerical features like popularity, tempo, and danceability.
- Key statistics (mean, median, standard deviation) were computed.
3. **Distribution Analysis**
- Visualized distributions for popularity, tempo, and danceability using histograms.
- Key insights:
- Popularity: Skewed towards lower values, with most songs scoring below 50.
- Danceability: Concentrated around 0.5–0.6, indicating moderately danceable tracks.
- Tempo: Peaks observed around common BPM ranges (80–120 BPM).
4. **Correlation Analysis**
- Computed a correlation matrix for all numeric features.
- Key findings:
- Danceability positively correlated with valence (happiness).
- Loudness and energy showed strong positive correlation.
- Visualized correlations using a heatmap.

# Visualizations
## Distribution of Popularity

## Danceability Distribution

## Tempo Distribution

## Correlation Heatmap

# Insights
1. Popularity: Most songs have low popularity, with only a few scoring above 70.
2. Danceability: Songs with higher danceability are more likely to have positive valence.
3. Tempo: Common tempo ranges align with standard BPMs for pop and dance tracks.
4. Correlations:
- Strong relationship between energy and loudness.
- Valence and danceability tend to move together.

# Tools and Libraries
R: Data analysis and visualization.
tidyverse: Data manipulation and cleaning.
ggplot: Visualization.
ggcorrplot: Correlation heatmap.

# Future Work
Feature Engineering:
Create derived features such as beats_per_minute_category or danceability_category.
Machine Learning:
Predict popularity using audio features.
Trend Analysis:
Compare feature trends across decades or genres.
Conclusion
This project demonstrates how EDA can uncover meaningful insights from music data. It highlights trends in audio features, relationships among variables, and factors influencing song popularity. The analysis can serve as a foundation for advanced modeling or recommendation systems in the music industry.
