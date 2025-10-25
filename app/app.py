from Flask import flask
app=flask(__name__)
@app.route('/')
def index():
  print("Hello CICD")
if __name__= "__main__":
  app.run(host=0.0.0.0,port=8000)
