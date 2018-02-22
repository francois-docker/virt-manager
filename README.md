# virt-manager

## Run
```
docker run -ti --rm --name virt-manager -v ~/virt-manager/:/root/.config/dconf/ -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix:0.0 francois/virt-manager:latest
```

## Build
As usual...
