FROM jupyter/base-notebook:latest

USER root

# Install system dependencies if needed
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

# Copy and install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all notebooks and project files
COPY . .

# Expose default Jupyter port
EXPOSE 8888

# Start JupyterLab (not the classic notebook UI)
CMD ["start.sh", "jupyter", "lab", \
     "--ip=0.0.0.0", \
     "--port=8888", \
     "--no-browser", \
     "--NotebookApp.token=''", \
     "--NotebookApp.password=''", \
     "--NotebookApp.allow_origin='*'"]
