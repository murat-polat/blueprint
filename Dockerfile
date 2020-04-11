FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /openedx /openedx/data

RUN git clone https://github.com/murat-polat/blueprint /openedx/blueprint
WORKDIR /openedx/blueprint
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
