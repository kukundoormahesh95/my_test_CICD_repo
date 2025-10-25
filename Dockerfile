FROM Python:3.11-slim
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
copy .. /app
CMD ['python','app.py']
