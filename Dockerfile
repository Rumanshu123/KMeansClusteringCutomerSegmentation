<<<<<<< HEAD
# Instructions from your branch
FROM python:3.8-slim
RUN pip install --no-cache-dir -r requirements.txt
=======
# Instructions from the other branch
FROM python:3.9-slim
RUN pip install -r requirements.txt
>>>>>>> branch-name
