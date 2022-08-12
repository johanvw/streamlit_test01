#FROM python:3.8-slim-buster
FROM lucone83/streamlit-nginx:python3.9

EXPOSE 8501

WORKDIR /home/streamlitapp/app
COPY . /home/streamlitapp/app

RUN pip install -r requirements.txt

#ENTRYPOINT ["streamlit", "run"]
#CMD ["streamlit_app.py"]
CMD ["streamlit", "run", "app.py"]