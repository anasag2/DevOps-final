
# Dockerfile (at repo root)
FROM python:3.11-slim
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source
COPY . /app

# Change as needed:
#   If you run `python app.py`:
CMD ["python", "app.py"]
# If Flask via env:
# ENV FLASK_APP=app.py
# CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

EXPOSE 5000
