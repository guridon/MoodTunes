# 🎵 SoongTunes
SoongTunes is an music recommendation service designed to deliver personalized music suggestions based on your emotions and situational context. By leveraging GraphRAG and semantic search techniques, SoongTunes effectively matches user input with curated song data to provide meaningful recommendations for various activities and moods.

## 🚀 Key Features
> - **Emotion and Context Analysis**   
>   : Processes user input (text or speech) using STT and LLM to extract emotional and situational tags.
> - **GraphRAG-Powered Recommendations**   
>   : Utilizes Neo4j's GraphRAG to generate context-aware recommendations based on graph relationships and embeddings.
> - **Real-time Search and Query Generation**    
>   : Dynamic semantic search and query generation with GraphRAG for efficient data retrieval and analysis.

## 📊 Datasets Used
This project uses the Melon Playlist Dataset, a public music information retrieval (MIR) dataset provided by Kakao Corp. It contains data from Melon, Korea's largest music streaming platform, and was originally designed for playlist continuation tasks:    
- **[Melon Playlist Dataset](https://mtg.github.io/melon-playlist-dataset/)**   

To suit the project requirements, only the necessary information from the Melon Playlist Dataset was extracted and transformed into a graph structure with nodes and edges.

## 🛠️ Tech Stack
> - Frontend: HTML, CSS, JavaScript
> - Backend: Flask
> - Database: Neo4j
> - AI Models:


## 🏗️ Project Structure
```
soongtunes/
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
#### Conda Environment Setup
```
conda env create -f environment.yml
conda activate soongtunes
```
## 📚 Usage
1. Start the server:
```
python run.py
```
2. Open the application in your browser:
```
http://localhost:5000
```

## 🧠 How It Works
1. Input Processing   
   : Accepts text or speech input, converting speech to text via STT. Processes user input based on predefined labels in the graph, ensuring compatibility with the graph structure.

2. Semantic Search   
  : Embeds each label separately and performs semantic search to find relevant results. Processes input with OpenAI or Gemma models for embedding generation.

3. GraphRAG Query   
  : Generates GraphRAG queries for context-aware search in Neo4j.

4. Recommendation Output   
  : Generates final recommendation results based on GraphRAG query results.

## 👥 Contributing
Contributions are welcome! Please submit pull requests or report issues via GitHub.

## 📜 License
This project is licensed under the MIT License - see the LICENSE file for details.
