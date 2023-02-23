# Run Infinite Storage Glitch on Docker

Running the [Infinite Storage Glitch](https://github.com/DvorakDwarf/Infinite-Storage-Glitch) in Docker.

Build docker image:

```bash
docker build -t ycs77/infinite-storage-glitch .
```

Using docker image, change `my/path` to your real path, and put your files to `resource` directory:

```bash
docker run --rm -it -v /my/path/resource:/resource ycs77/infinite-storage-glitch
# or using Git Bash on Windows
docker run --rm -it -v D:/my/path/resource:/resource ycs77/infinite-storage-glitch

cd resource
# using Infinite Storage Glitch
isg_4real
```
