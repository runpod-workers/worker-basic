# Worker Basic

This is a minimal serverless worker example. You can use the provided code to build a Docker image and deploy it as a serverless endpoint. When a request is sent to the endpoint, a worker spins up and executes the rp_handler.py script. You can replace the sleep function with any machine learning task, such as image generation, text generation, or speech-to-text conversion.

## To test this code locally:

```
# 1. Create a Python virtual environment
python3 -m venv venv

# 2. Activate the virtual environment
# On macOS/Linux:

source venv/bin/activate

# On Windows:
venv\Scripts\activate

# 3. Install the Runpod SDK
pip install runpod

# 4. Run your script locally, the script will automatically read test_input.json as input, passing it to the handler function as an event
python3 rp_handler.py

```

## Build and Push Docker Image to a Container Registry (e.g., Docker Hub)

```
# Build docker image
docker build -t your-dockerhub-username/your-image-name:v1.0.0 --platform linux/amd64 .

# Push docker image to docker hub
docker push your-dockerhub-username/your-image-name:v1.0.0
```
