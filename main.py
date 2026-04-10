from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"status": "online", "message": "AI Assistant Microservice is running!"}

@app.get("/chat")
def mock_chat():
    return {"response": "Hello! I am your containerized AI backend."}