FROM python:3.8

# set a directory for the app # src/app
WORKDIR /usr

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# create and set user
# RUN groupadd -r user && useradd -r -g user user
# RUN chown -R user:user /usr/src/app
# USER user

# run the command
CMD ["python", "./app.py"]
