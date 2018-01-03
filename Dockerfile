FROM alpine:3.1

# Update
RUN apk add --update python py-pip
RUN apk add --update cairo

# Install app dependencies
# RUN pip install -r requirements.txt
RUN pip install Flask

# Bundle app source
COPY simpleapp.py /src/simpleapp.py

EXPOSE  8000
CMD ["python", "/src/simpleapp.py", "-p 8000"]
