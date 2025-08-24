


# 📚 Book Bot – AI Study Buddy

Book Bot is a **Streamlit app** that lets you upload PDFs, text, or markdown files and then ask questions about them.
It uses **LangChain + Google Gemini** for smart Q\&A and can optionally **read answers aloud** using `gTTS`.

---

## 🚀 Setup

1. **Clone this repo**

   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
   ```

2. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

3. **Add your API key**
   Create a `.env` file in the project root:

   ```
   GOOGLE_API_KEY=your_api_key_here
   ```

---

## ▶️ Run the App

```bash
python -m streamlit run app.py
```

Then open the link shown in the terminal (usually **[http://localhost:8501](http://localhost:8501)**).

---

## 🛠 Features

* 📂 Upload **PDF, TXT, MD** (multiple files allowed)
* ⚡ Fast document indexing with FAISS
* 🤖 Ask questions, get **Gemini-powered answers** with context citations
* 🔊 Optional **text-to-speech** (install `gTTS`)
* ♻️ Persistent caching so re-uploads are faster

