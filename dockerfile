# Use official Python image
FROM python:3.13

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary files (excluding __pycache__)
COPY main.py pyproject.toml uv.lock /app/

# Install dependencies using pip
RUN pip install fastapi[all] 

# Expose the port FastAPI runs on
EXPOSE 5050

# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5050"]
