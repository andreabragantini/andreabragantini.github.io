---
layout: post
title: Real-Time Weather Dashboard
subtitle: A Streamlit application for real-time weather visualization
gh-repo: andreabragantini/streamlit_weather_realtime
gh-badge: [star, fork, follow]
tags: [Python, Streamlit, Weather API, Data Visualization]
comments: true
---

This project is a real-time weather dashboard built using Streamlit. It allows users to visualize current and historical weather data for any location. The application integrates multiple APIs for geolocation and weather data, providing an interactive and user-friendly interface.

### Features
- **Real-Time Weather Data**: Fetches current weather conditions using the OpenWeatherMap API.
- **Historical Weather Data**: Displays past weather trends for selected locations.
- **Interactive Visualizations**: Includes dynamic charts and graphs for better data interpretation.
- **Geolocation Support**: Automatically detects the user's location or allows manual input.

### Technologies Used
- **Python**: The core programming language for the application.
- **Streamlit**: Framework for building the interactive web app.
- **OpenWeatherMap API**: For fetching weather data.
- **Matplotlib/Plotly**: For creating visualizations.

### How to Use
1. Clone the repository from GitHub.
2. Install the required dependencies using `pip install -r requirements.txt`.
3. Run the Streamlit app with the command `streamlit run streamlit_app.py`.
4. Open the app in your browser and explore the features.

Check out the [GitHub repository](https://github.com/andreabragantini/streamlit_weather_realtime) for more details and to contribute to the project!

### Hosted Application
This application is hosted on GitHub and deployed via Streamlit Community Cloud. You can access it here: [Weather Realtime App](https://weatherrealtime.streamlit.app/).

**Notes:**
- The app may enter a sleep state after periods of inactivity and could take a few moments to wake up when first accessed.
- If you’re running on Streamlit Community Cloud, the `secrets.toml` file is ignored. You must add secrets in the app’s **Settings → Secrets** on Streamlit.
