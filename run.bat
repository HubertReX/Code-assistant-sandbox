@ECHO OFF
chcp 65001
cls
REM activate virtual environment
call .venv\Scripts\activate

ECHO Naciśnij CTRL + C aby zatrzymać
ECHO.
set FLASK_APP=app.py
set FLASK_ENV=development
REM run in debug mode (auto reload on code change)
set FLASK_DEBUG=1
flask run --host=0.0.0.0
