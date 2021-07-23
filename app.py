from types import MethodDescriptorType
from flask import Flask, render_template
from chart_mysql import chart_all

app = Flask(__name__)
@app.route('/', methods=['get'])
def get():
    return render_template('reqres_mysql.html')

@app.route('/getchart', methods=['get'])
def get_chart_date():
    print(chart_all)
    return chart_all()

if __name__ == "__main__":
    app.run(debug=True, host="127.0.0.1", port="5000")

