# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt


RUN pip install --upgrade pip
# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./src/fast_app_k8 /code/app

# 
CMD ["fastapi", "run", "app/main.py", "--port", "80", "--host", "0.0.0.0"]