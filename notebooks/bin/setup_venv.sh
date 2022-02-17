# Create the virtual environment  
python3.10 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install and compile the requirements
pip install --upgrade pip
pip install pip-tools
cd requirements
pip-compile --output-file requirements.txt requirements.in
pip install -r requirements.txt

# Create and name the kernal for this virtual environment
cd ..
python -m ipykernel install --user --name nnums --display-name "nnums.com"
