import os
from flask import Flask, url_for, render_template, request

app = Flask(__name__)

@app.route("/")
def render_main():
    return render_template('plothome.html')
    
@app.route('/plotresult')
def render_plotresultk():
    try:
        x_data_result = list(request.args{'x_data'})
        y_data_result = list(request.args{'y_data'})        
        plot(data_result)
    


    
if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(port=port)
