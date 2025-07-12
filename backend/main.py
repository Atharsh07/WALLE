# backend/main.py

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Command(BaseModel):
    action: str


@app.get("/")
def read_root():
    return {"message": "Welcome to Arduinobot API 🚀"}


@app.post("/command")
def send_command(cmd: Command):
    print(f"Received command: {cmd.action}")
    return {"status": "ok", "received": cmd.action}


@app.get("/status")
def get_status():
    return {
        "battery": "90%",
        "position": {"x": 1.2, "y": 0.8},
        "mode": "IDLE"
    }
