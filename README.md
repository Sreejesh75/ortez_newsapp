# 📰 Flutter News App



A **beautiful, fast, and simple Flutter News App** that lets users browse the latest headlines and read full articles. Built with **Provider** for smooth state management and **Hero animations** for seamless transitions.

---

## 🌟 Features

- **Latest News Feed** with title, image, description, and published date  
- **Infinite Scroll** & **Pull-to-Refresh**  
- **Search Bar** to find articles by keywords or titles  
- **Article Detail Screen** showing full content, author, and image  
- **Smooth Navigation** with slide/fade transitions & Hero animations  

---
🗂 Project Structure
lib/
├── main.dart
├── models/          # Article models
├── providers/       # Provider for state management
├── screens/         # News feed & detail screens
├── services/        # API integration
├── widgets/         # Reusable components

---

## ⚡ Tech Stack

- **Flutter & Dart** – Cross-platform UI & logic  
- **Provider** – State management  
- **NewsAPI** – Fetching live news articles  

---

## 🚀 Getting Started

1. Clone the repository:  

git clone https://github.com/yourusername/flutter-news-app.git
cd flutter-news-app

2. Install dependencies:

flutter pub get


3. Add your NewsAPI key in lib/services/news_service.dart:

const String apiKey = "YOUR_API_KEY";


4. Run the app:

flutter run
