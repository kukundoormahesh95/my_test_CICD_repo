FROM python:3.11-slim

WORKDIR /app

# don't write .pyc files and make stdout/stderr unbuffered (good for logs)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# copy only requirements first to take advantage of Docker layer caching
COPY requirements.txt .

# use python -m pip and avoid cache to keep image smaller
RUN python -m pip install --no-cache-dir -r requirements.txt

# copy the rest of the application
COPY . .

# use JSON-array form (requires double quotes) so the command is the PID 1 process
CMD ["python", "app.py"]
