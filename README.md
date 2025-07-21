# Docker GHA Training

The goal of this training is to learn how to use Docker and GitHub Actions to build, test and deploy a simple web application. In this training, we will use a simple web application written in Python and Flask.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Docker Image Creation (8 points)

## 1. Fork the repo: https://github.com/emmanuelgautier/docker-gha-training
- We can't put it private because the repo is public.

## 2. Create the dockerfile
Using python:3.12-slim the lightweight base image. The `--no-cache-dir` option in `pip install` ensures that no unnecessary files are cached, keeping the image size minimal. Setting `PYTHONDONTWRITEBYTECODE=1` and `PYTHONUNBUFFERED=1` improves performance and ensures predictable behavior.

## 3. Build the Docker Image
I used the following command to build the Docker image:
```bash
docker build -t myapp:1 .
```

## 4. Run the Docker Container
Run the container using the built image, expose port 5000 on the container to port 8080 on the host, and name the container `myapp_container`:
```bash
docker run -d -p 8080:5000 --name myapp_container myapp:1
```

## 5. Confirm that the container is running and accessible
To confirm that the container is running, I used the following command:
```bash
docker ps
```
![alt text](docker-ps.png)