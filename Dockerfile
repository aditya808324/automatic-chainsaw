FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN touch database/__init__.py bot/__init__.py backend/__init__.py reports/__init__.py

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "run.py"]
