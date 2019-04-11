TILER Box
===========================

Requirements
---

- Install [Docker Engine](https://docs.docker.com/engine/installation/)

- Install [Docker Compose](https://docs.docker.com/compose/install/)


Installation
---

##### Clone the repository :

```bash
git clone git@github.com:erwan-haquet/tiler-box.git tiler
cd tiler
```

##### Build the box :

```bash
./docker-init.sh
```


Usage
---

##### Access Observer Service console :

```bash
./runner.sh observer
```

##### Access Orchestrator Service console :

```bash
./runner.sh orchestrator
```

