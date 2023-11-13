FROM quay.io/modh/runtime-images@sha256:7dd23e58291cad7a0ab4a8e04bda06492f2c027eb33b226358380db58dcdd60b

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt && \
    pip uninstall -y opencv-python && \
    pip uninstall -y opencv-python-headless && \
    pip install opencv-python-headless==4.8.0.74