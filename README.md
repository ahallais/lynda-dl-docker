# Lynda Downloader Docker


## How to build

```console
docker build -t lyndadl .
```

## How to run

```console
mkdir -p courses
docker run --name lyndadownload --rm -v /full/path/to/host/directory/courses:/root/dlcourses lyndadl -u youruser@domain.com -p yourpassword  https://www.lynda.com/URLOFTHECOURSE
```  

## Help

```console
	docker run lyndadl -h
```

The entrypoint script already specify the directory to download with -d ( /root/dlcourses )