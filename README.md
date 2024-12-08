# 🎵 MoodTunes
MoodTunes is a real-time music recommendation service designed to deliver personalized music based on your current activity or situation. Instead of relying on user history or preferences, MoodTunes uses speech inputs to understand the user's current emotional and situational context, providing music that fits the moment—whether you're studying, exercising, traveling, or dealing with a breakup.  

## 🚀 Key Features
> - **Emotion Analysis**   
>   : User input is processed using a combination of STT and LLM to extract emotion and context tags.
> - **Context-Aware Recommendations**   
>   : Based on the extracted tags, a content-based filtering approach is used to match the user’s current context with relevant songs from a curated database.
> - **Real-time Recommendations**    
>   : Recommendations are generated on-the-fly based on live input.

## 📊 Datasets Used

This project utilizes several external datasets to provide accurate music recommendations based on emotional and situational context. The following datasets were used:

- **[DEAM Dataset](https://github.com/drfeinberg/DEAM-Emotion-Music-Dataset)**
- **[EmoMusic Dataset](https://github.com/MTG/emoMusic)**
- **[Million Song Dataset](http://millionsongdataset.com/)**

## 🛠️ Tech Stack
> - Frontend: React.js
> - Backend: FastAPI
> - Model: PyTorch


## 🏗️ Project Structure
```
moodtunes/
├── app/
│   ├── __init__.py        
│   ├── routes.py          
│   ├── services/
│   │   ├── recognition.py 
│   │   ├── response.py
│   │   ├── semantic_search.py
│   │   └── utils.py       
│   ├── templates/         
│   │   ├── index.html     
│   │   └── result.html    
│   └── static/
│       ├── css/          
│       │   └── style.css
│       └── js/          
│           └── script.js
├── api_key.json    
├── config.py             
├── run.py                 
└── environment.yml  
```

## 🚧 Installation
```
pip install -r requirements.txt
```
## 📚 Usage

## 🧠 How It Works

## 👥 Contributing

## 📜 License
This project is licensed under the MIT License - see the LICENSE file for details.
