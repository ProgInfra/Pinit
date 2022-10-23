# Pinit

[![License : MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Icon](./icon.png)

## Table Of Contents

- [Pinit](#pinit)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Access](#access)
  - [Getting Started](#getting-started)
  - [Documentations](#documentations)
  - [Development](#development)
    - [Requirements](#requirements)
    - [Docsify](#docsify)
  - [Contributing](#contributing)
  - [Licence](#licence)

## Description

Raspberry Pi Installation and Configuration as a server.

The **Raspberry Pi** is a **great card** to setup a lot of project like **servers**, **home assistant** for every **programming** or **electronic** project you want but for **low power** project.

## Access

- **Development (Local)** :
  - [Pinit Docs Development](http://localhost:6007)
- **Production (Local)** :
  - [Pinit Docs Production](http://localhost:6007)
- **Production** :
  - [Pinit Docs Production](https://proginfra.gitlab.io/pinit)

## Getting Started

1) Buy some [Material](./docs/material.md) to build your server.
2) Prepare the [system](./docs/init.md) you want on drive.
3) [Install and Configure](./docs/configure.md) your server.

Once your server is completed, you can access it with these links :

- **SSH Access** : USER@192.168.X.X
  - **Username** : USER
  - **Password** : You have defined it
- **Web UI** : [Cockpit](https://192.168.X.X:9090)
  - Same as SSH Access

## Documentations

- [Ideas](./docs/ideas.md)
- [Material](./docs/material.md)
- [Init](./docs/init.md)
- [Install and Configure](./docs/configure.md)

## Development

If you want you can **develop** this repository :

1) You need to install the [Requirements](#requirements)
2) You can develop on [Docsify](#docsify)

### Requirements

We use **Docker** :

- Docker
- Docker Compose

### Docsify

```bash
cd docsify

# Development
docker compose -f docker-compose.dev.yml up

# Production
docker compose up --build
```

## Contributing

See [CONTRIBUTING](./CONTRIBUTING.md) for more information.

## Licence

This project is licensed under the terms of the MIT license.

See [LICENSE](./LICENCE.md) for more information.
