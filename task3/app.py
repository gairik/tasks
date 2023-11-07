import os
import json
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def get_response():
    with open('fact.json', 'r') as file:
        data = json.load(file)
    return data
