# Run Infinite Storage Glitch into Docker

Build the [Infinite Storage Glitch](https://github.com/DvorakDwarf/Infinite-Storage-Glitch) in Docker.

Build docker image:

```bash
docker build -t isg .
```

And now put your files into `resource` directory.

Running the `isg_4real` command in the container:

```bash
docker run --rm -it -v "${PWD}/resource":/resource isg
# or using Git Bash on Windows
docker run --rm -it -v "/$PWD/resource":/resource isg
# or using CMD on Windows
docker run --rm -it -v %cd%/resource:/resource isg
```

Encode a file:

```
? Pick what you want to do with the program
> Embed

? What is the path to your file ?
> image.jpg

? You can use one of the existing presets or custom settings
> Optimal compression resistance
```

Decode a video:

```
? Pick what you want to do with the program
> Dislodge

? What is the path to your video ?
> output.avi

? Where should the output go ?
> image.jpg
```
