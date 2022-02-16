python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install pip-tools
cd requirements
pip-compile --output-file requirements.txt requirements.in
pip install -r requirements.txt