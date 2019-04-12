Twyzer Box
===========================

Requirements
---

- Install [Docker Engine](https://docs.docker.com/engine/installation/)

- Install [Docker Compose](https://docs.docker.com/compose/install/)


Installation
---

##### Clone the repository :

```bash
git clone git@github.com:erwan-haquet/twyzer-box.git twyzer
cd twyzer
```

##### Build the box :

```bash
./docker-init.sh
```


Usage
---

##### Access [Observer Service](https://github.com/erwan-haquet/twyzer-observer) console :

```bash
./runner.sh observer
```

##### Access [Orchestrator Service](https://github.com/erwan-haquet/twyzer-orchestrator) console :

```bash
./runner.sh orchestrator
```

