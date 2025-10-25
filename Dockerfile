FROM Python:3.11-slim
WORKDIR /app
COPY requirements.txt
RUN pip install -requirements.txt
copy ..
CMD ['python','app.py']
