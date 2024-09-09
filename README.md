
# Ujan's Migration Software v1

## Overview
**Ujan's Migration Software v1** is a command-line tool that helps automate the migration process from Flask to Django. It handles the initial setup of your Django project, creates the necessary directories, and copies over important components such as templates and static files from your existing Flask project.

## Features
- **Automated Environment Setup**: Installs necessary dependencies for Django.
- **Project Structure Creation**: Automatically sets up the Django project and app structure.
- **File Transfer**: Automatically copies `templates` and `static` files from Flask to Django.
- **ASCII Art Cats**: A friendly cat greets you at the start and thanks you at the end!

## Prerequisites
- Python 3.x
- Flask project with a standard structure (templates and static directories)
- Virtual environment setup (optional, but recommended)

## How to Use
1. Clone or download this repository.
2. Ensure your Flask project is located in the `..\flask_project` directory relative to this script.
3. Run the batch file:
   ```batch
   migrate.bat
   ```
4. Follow the on-screen instructions to complete the migration process.

## Notes
- Manual steps are required to port Flask routes, models, and other logic to Django.
- This tool provides a starting point, but further customization may be necessary depending on your project's complexity.

## Acknowledgements
Special thanks to the ASCII cats for making migrations more fun!

---
