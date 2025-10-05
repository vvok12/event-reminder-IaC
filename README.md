### Deployment

To export all the containers:
```bash
docker compose config | grep event | grep -oP "container_name:\s+\K(.*)" | while read cn; do docker save "${cn}" > "${cn}.tar"; done
```

To load containers:
```bash
for f in $(find . -type f -name '*.tar'); do sudo docker load -i "${f}"; done
```

To remove containers from the server:
```bash
for f in $(find . -type f -name '*.tar'); do rm "${f}"; done
```

[from here](https://stackoverflow.com/a/77523363) 