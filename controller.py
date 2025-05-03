from flask import Flask, render_template, request, redirect, url_for, session
import subprocess

app = Flask(__name__)
app.secret_key = 'sabsoub_secret_key'

USERNAME = 'admin'
PASSWORD = 'admin'

@app.route('/')
def index():
    return redirect(url_for('login'))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        if request.form['username'] == USERNAME and request.form['password'] == PASSWORD:
            session['logged_in'] = True
            return redirect(url_for('admin_panel'))
        else:
            return render_template('login.html', error='Invalid credentials')
    return render_template('login.html')

@app.route('/admin')
def admin_panel():
    if not session.get('logged_in'):
        return redirect(url_for('login'))
    return render_template('admin.html')

@app.route('/action', methods=['POST'])
def action():
    if not session.get('logged_in'):
        return redirect(url_for('login'))

    command = request.form.get('command')
    output = ''
    if command:
        try:
            output = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT, timeout=10, universal_newlines=True)
        except subprocess.CalledProcessError as e:
            output = f"Error: {e.output}"
        except Exception as ex:
            output = f"Exception: {str(ex)}"
    return render_template('result.html', output=output)

@app.route('/logout')
def logout():
    session.pop('logged_in', None)
    return redirect(url_for('login'))

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5052)
