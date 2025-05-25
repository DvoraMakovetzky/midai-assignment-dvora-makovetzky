FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    git build-essential cmake pkg-config libopenblas-dev wget && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    ultralytics==8.2.9 \
    opencv-python-headless \
    llama-cpp-python==0.2.71 \
    pdfminer.six

COPY . /app
WORKDIR /app

RUN python - <<'PY'
from ultralytics import YOLO
YOLO("yolov8n.pt")
PY

CMD ["python", "main.py"]