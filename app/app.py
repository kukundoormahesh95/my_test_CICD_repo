from Flask import flask
app=flask(__name__)
@app.route('/')
def index():
  print("Hello CICD")
app.run(http://127.0.0.1,degug=True)
