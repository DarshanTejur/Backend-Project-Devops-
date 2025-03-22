from fastapi import FastAPI

app: FastAPI = FastAPI(title="simple project")


@app.get("/")
def ping():
    return {"Message": "working"}
