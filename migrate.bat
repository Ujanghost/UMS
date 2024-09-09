@echo off
REM Batch script to migrate a Flask project to Django with user inputs
echo.
color 0a
echo  /\_/\  
echo ( o.o )  Welcome to Ujan's Migration Software v1! 
echo This tool will help you migrate your Flask project to Django.
echo.

REM 1. Ask user for project name and directories
set /p project_name="Enter the new Django project name: "
set /p app_name="Enter the Django app name (from Flask): "
set /p flask_templates_dir="Enter the Flask templates directory (e.g., flask_project/templates): "
set /p flask_static_dir="Enter the Flask static directory (e.g., flask_project/static): "

REM 2. Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate

REM 3. Install necessary Django dependencies
echo Installing Django and necessary dependencies...
pip install django djangorestframework

REM 4. Create a new Django project
echo Creating new Django project: %project_name%...
django-admin startproject %project_name%

REM 5. Create Django app based on user input
echo Creating Django app: %app_name%...
cd %project_name%
python manage.py startapp %app_name%

REM 6. Copy templates and static files from Flask to Django
echo Copying Flask templates from %flask_templates_dir% to Django templates directory...
xcopy /E /I ..\%flask_templates_dir% %project_name%\templates

echo Copying Flask static files from %flask_static_dir% to Django static directory...
xcopy /E /I ..\%flask_static_dir% %project_name%\static

REM 7. Migrate Flask routes to Django views (manual step reminder)
echo You need to manually migrate Flask routes to Django views.
echo Open the file %app_name%\views.py and transfer Flask logic.

REM 8. Update Django settings for static files and templates
echo Don’t forget to update Django settings for static and template files.

REM 9. Migrate Flask models to Django models (manual step reminder)
echo Manually migrate Flask models to Django models in %app_name%\models.py.

REM 10. Database migration (manual step reminder)
echo Make sure to configure your database and migrate using Django commands:
echo python manage.py migrate

echo Migration preparation complete. Now you need to manually transfer business logic and update settings.
echo.
echo  /\_/\  
echo ( o.o )  Thank you for using Ujan's Migration Software v1!  
echo.
pause



pause
