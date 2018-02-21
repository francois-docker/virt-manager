# virt-manager

## TODO
- Switch to building virt-manager from source to access latest version(curently 1.5.0) instead of debian packaged on (currently 1.4.0)

## Run
```
docker run -ti --rm --name virt-manager -v ~/virt-manager/:/root/.config/dconf/ -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0.0 francois/virt-manager:latest
```

## Build
As usual...
