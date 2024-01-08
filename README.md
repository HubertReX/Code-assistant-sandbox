# How to start

## Windows

```console
REM initialization
python -m venv .venv
call .venv\Scripts\activate

pip install -r requirements.txt

REM change firewall settings to open port 5000 for incoming TCP trafic (run in powershell as Administrator):
REM netsh advfirewall firewall add rule name="Open Port 5000 for Flask web server" dir=in action=allow protocol=TCP localport=5000

set FLASK_APP=app.py
set FLASK_ENV=development
REM run in debug mode (auto reload on code change)
set FLASK_DEBUG=1
flask run --host=0.0.0.0
```

## Linux/MacOS

```console
# initialization
python -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt

export FLASK_APP=app.py
export FLASK_ENV=development
# run in debug mode (auto reload on code change)
export FLASK_DEBUG=1
flask run --host=0.0.0.0
```
