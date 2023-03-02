# Run Infinite Storage Glitch on Docker

Build the [Infinite Storage Glitch](https://github.com/DvorakDwarf/Infinite-Storage-Glitch) in Docker.

Build docker image:

```bash
docker build -t isg .
```

Using docker image, put your files to `resource` directory:

```bash
docker run --rm -it -v "${PWD}/resource":/resource isg
# or using Git Bash on Windows
docker run --rm -it -v "/$PWD/resource":/resource isg
# or using CMD on Windows
docker run --rm -it -v %cd%/resource:/resource isg

cd resource
# using Infinite Storage Glitch
isg_4real
```
