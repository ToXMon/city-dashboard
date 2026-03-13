# 🌆 City Dashboard

A stunning, professional-grade city information dashboard with real-time weather, event guides, and beautiful UI.

![Version](https://img.shields.io/badge/version-3.0.0-coral)
![Docker](https://img.shields.io/badge/docker-wijnaldum%2Fcity--dashboard-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Features

### 🌡️ Real-Time Weather
- **Open-Meteo API** integration for accurate weather data
- Temperature displayed in Fahrenheit with visual gauge
- Wind speed and direction with animated compass
- Humidity and air quality index
- Sunrise/sunset times

### 🏙️ Multi-City Support
- **6 Cities**: Atlantic City, New York, Los Angeles, Chicago, Miami, Las Vegas
- Dynamic data updates on city selection
- Each city has curated events and attractions

### 🎨 Professional UI/UX
- **Typography**: Space Grotesk (headlines) + DM Sans (body)
- **Color Palette**: Deep Ocean (#0a0f1a) + Coral accent (#ff6b5b)
- **Dark/Light Mode** with smooth transitions
- **Micro-interactions**: Hover effects, number animations, card lifts
- **Responsive Design**: Works on desktop and mobile

### 🎯 Weekend Guide
- **Timeline view** for upcoming events
- Category tags: 🎵 Music, 🍽️ Dining, 🎰 Casino, 🏖️ Beach
- "Must Do" highlights
- Local tips for each city

## 🚀 Quick Start

### Docker

```bash
# Pull the latest image
docker pull wijnaldum/city-dashboard:v3.0.0

# Run on port 8080
docker run -d -p 8080:80 wijnaldum/city-dashboard:v3.0.0
```

Open http://localhost:8080 in your browser.

### Akash Network Deployment

1. Open [Akash Console](https://console.akash.network)
2. Create Deployment → Import from GitHub
3. Select this repository
4. Choose `deploy-v3.yaml`

Or use the SDL directly:

```yaml
---
version: "2.0"

services:
  web:
    image: wijnaldum/city-dashboard:v3.0.0
    expose:
      - port: 80
        as: 80
        to:
          - global: true

profiles:
  compute:
    web:
      resources:
        cpu:
          units: 0.5
        memory:
          size: 512Mi
        storage:
          size: 1Gi
  placement:
    akash:
      pricing:
        web:
          denom: uakt
          amount: 1000

deployment:
  web:
    akash:
      profile: web
      count: 1
```

## 🛠️ Tech Stack

| Component | Technology |
|-----------|------------|
| **Frontend** | HTML5, CSS3, Vanilla JavaScript |
| **Styling** | Tailwind CSS (CDN), Custom CSS |
| **Icons** | Lucide Icons |
| **Fonts** | Space Grotesk, DM Sans (Google Fonts) |
| **Weather API** | Open-Meteo (Free, No API Key) |
| **Air Quality** | WAQI API |
| **Container** | Docker (nginx:alpine) |
| **CI/CD** | GitHub Actions |
| **Deployment** | Akash Network, Docker Hub |

## 📁 Project Structure

```
city-dashboard/
├── index.html          # Main application (single-page)
├── cities.json         # City coordinates and metadata
├── nginx.conf          # Nginx server configuration
├── Dockerfile          # Docker build configuration
├── deploy-v3.yaml      # Akash SDL (V3)
├── deploy-v2.yaml      # Akash SDL (V2)
├── deploy.yaml         # Akash SDL (V1)
└── .github/
    └── workflows/
        └── docker-build.yml  # GitHub Actions CI/CD
```

## 🔧 Development

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/ToXMon/city-dashboard.git
cd city-dashboard
```

2. Open `index.html` in your browser (no build required)

3. For Docker testing:
```bash
docker build -t city-dashboard .
docker run -p 8080:80 city-dashboard
```

### Adding New Cities

Edit `cities.json` to add new cities:

```json
{
  "name": "Seattle",
  "lat": 47.6062,
  "lon": -122.3321,
  "timezone": "America/Los_Angeles",
  "emoji": "☕",
  "events": [...],
  "attractions": [...]
}
```

## 🎨 Design Philosophy

### V3 Design Principles

1. **No AI Slop** - Distinctive typography, cohesive color palette
2. **Signature Moments** - Temperature gauge, wind compass
3. **Intentional Animations** - Subtle, purposeful micro-interactions
4. **Data Visualization** - Visual representation of weather data
5. **Professional Polish** - Consistent spacing, shadows, borders

### Color Tokens

```css
--ocean-deep: #0a0f1a;
--ocean-mid: #1e293b;
--ocean-light: #334155;
--coral: #ff6b5b;
--coral-light: #ff8a7d;
--cream: #f8fafc;
```

## 📊 API Reference

### Open-Meteo (Weather)
- **Endpoint**: `https://api.open-meteo.com/v1/forecast`
- **Parameters**: `latitude`, `longitude`, `current_weather`, `hourly`
- **Rate Limit**: None (Free)
- **Auth**: None required

### WAQI (Air Quality)
- **Endpoint**: `https://api.waqi.info/feed/geo:{lat};{lon}/`
- **Auth**: Token-based (optional, works without)

## 📝 Changelog

### V3.0.0 (Current)
- 🎨 Complete UI/UX redesign
- ✨ New typography system (Space Grotesk + DM Sans)
- 🎯 Temperature gauge with color gradient
- 🧭 Wind compass with directional arrow
- 🌙 Improved dark mode
- 🎪 Enhanced event timeline
- 🚀 Performance optimizations

### V2.0.0
- 🌡️ Real weather data from Open-Meteo
- 🏙️ City selector dropdown
- 🌙 Dark/Light mode toggle
- 📱 Responsive design

### V1.0.0
- 🎉 Initial release
- 📊 Static city information

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m "Add amazing feature"`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Open-Meteo](https://open-meteo.com/) for free weather API
- [Lucide](https://lucide.dev/) for beautiful icons
- [Tailwind CSS](https://tailwindcss.com/) for utility classes
- [Akash Network](https://akash.network/) for decentralized deployment

---

Made with ❤️ by [ToXMon](https://github.com/ToXMon)
