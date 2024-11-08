from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def api_home():
    return {"message": "Home is working!"}
