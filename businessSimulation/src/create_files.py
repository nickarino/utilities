import os

# Define the content of each file
dockerfile_content = """\
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
"""

requirements_content = """\
pytest>=6.0
"""

devcontainer_content = """\
{
    "name": "Python 3 - Pytest",
    "build": {
        "dockerfile": "Dockerfile",
        "context": "."
    },
    "settings": { 
        "terminal.integrated.shell.linux": "/bin/bash",
        "python.pythonPath": "/usr/local/bin/python",
        "python.linting.enabled": true,
        "python.linting.pylintEnabled": true,
        "python.testing.pytestEnabled": true
    },
    "extensions": [
        "ms-python.python",
        "ms-python.vscode-pylance"
    ],
    "forwardPorts": [],
    "postCreateCommand": "pip install -r requirements.txt",
    "remoteUser": "root"
}
"""

calculator_content = """\
def add(a, b):
    \"\"\"Add two numbers together.\"\"\"
    return a + b
"""

test_calculator_content = """\
import pytest
from calculator import add

def test_add():
    assert add(5, 3) == 8
"""

# Function to create a file
def create_file(path, content):
    with open(path, 'w') as file:
        file.write(content)

# Create the directory structure
os.makedirs('my_pytest_project', exist_ok=True)
os.chdir('my_pytest_project')
os.makedirs('.devcontainer', exist_ok=True)

# Create each file
create_file('Dockerfile', dockerfile_content)
create_file('requirements.txt', requirements_content)
create_file('.devcontainer/devcontainer.json', devcontainer_content)
create_file('calculator.py', calculator_content)
create_file('test_calculator.py', test_calculator_content)

print("Project files created successfully in 'my_pytest_project' directory.")
