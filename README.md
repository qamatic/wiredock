#WireDock 
It's a WireMock in Docker!

###Build
```sh
docker build . -t wiredock:latest 
```

###Stub
```sh
docker run --rm -p 8080:8080  wiredock:latest 
```

###Record

```sh
docker run --rm -p 8080:8080   wiredock:latest --verbose --record-mappings --proxy-all="<url>"
```