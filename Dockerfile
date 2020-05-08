FROM python:3.6-alpine
COPY . /app
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
ENTRYPOINT ["python"]
CMD ["teste.py"]
EXPOSE 5000