<p align="center">
  <h1 align="center">TodoList API</h1>

  <p align="center">
    REST API of SKK-Dev TodoListApp
  </p>
</p>

<div align="center">
  
[![semantic-release: angular][semantic-badge]][semantic-url]
[![codecov][codecov-shield]][codecov-url]
  
</div>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#deployment-guide">Deployment Guide</a></li>
      </ul>
    </li>
    <li><a href="#features">Features</a></li>
    <li><a href="#contribution-guide">Contribution Guide</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#contributors">Contributors</a></li>
  </ol>
</details>

## About The Project

When facing a huge task, we often break it down into smaller task. So, we can finish them little by little.

In order to make them more organized, we can create a to-do list. Creating a to-do list has been of great help to various individuals because it emphasizes priorities and helps minimize tasks.

The TodoList Project developed by SKK-Dev Team will help the users organize their task. We provide them in simple, elegant, light and accessible place. So that, users will organize their task better :)

## Getting Started

### Prerequisites

When you're going to contribute or compile, you'll need at least:

- Go 1.19+
- MySQL 8.0.x
- MongoDB 5.x

### Installation or Configure

```bash
# clone if you don't have the code base
$ git clone git@github.com:Serikat-Kuli-Ketik/backend-todolist.git

# tidy up and run
$ go mod tidy

$ go run main.go
```

### Deployment Guide

#### Self-Build

```sh
# clone if you don't have the code base
$ git clone git@github.com:Serikat-Kuli-Ketik/backend-todolist.git

# install the dependencies
$ go mod download

# compile 
$ go build -o main
```

After build, move with the `public` folder next to executable  file. Then, execute with `./main` command. Finally, configure the `.env` file to be configured trough your own MySQL database.

#### Docker Build

```sh
# clone if you don't have the code base
$ git clone git@github.com:Serikat-Kuli-Ketik/backend-todolist.git

# build a docker image
$ docker build -t todolist-api .

# create a container that running at port :19000
$ docker run -dp 19000:8000 --name todolist-api todolist-api

# copy .env file to your container
$ docker cp ./app.env todolist-api:/app/.

# restart container
$ docker restart todolist-api
```

If you decide to use docker method, you need to run docker daemon and create the .env file first. Then deployment can be done.

#### GHCR.io Image

```sh
# pull docker image at latest version
$ docker pull ghcr.io/Serikat-Kuli-Ketik/backend-todolist:latest

# create a container that running at port :19000
$ docker run -dp 19000:8000 --name todolist-api ghcr.io/Serikat-Kuli-Ketik/backend-todolist:latest

# copy .env file to your container
$ docker cp ./app.env todolist-api:/app/.

# restart container
$ docker restart todolist-api
```

If you decide to use docker method, you need to run docker daemon and create the .env file first. Then deployment can be done.

## Features

### 📝 Task Notes

You can express and explain the task as your own.

### 🔖 Labels

You can group and filter their tasks with label. So, say more organized for your breaks down!

### ⏰ Reminders

Don't be forgotten the due date of your tasks! You can set some reminders and repeat them as you like!

## Contribution Guide

This project development follows trunk-based development. Which is, we don't use dev branch to test or deploy in staging. A complete guide can be read at [CONTRIBUTING.md](./CONTRIBUTING.md).

## Licenses

All of this source code are licensed under the MIT license.

## Contact Information

- Our captain! Lesman Iman - <lesmanawahyu25@gmail.com>
- Our bug creator in backend district, Hamdan Yuwafi - <yuwafi.hamdan365@gmail.com>

## Contributors

✨ Thanks goes to these wonderful people who speed up the development process:

<!-- ALL-CONTRIBUTORS-LIST:START -->
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/Lesmannn">
                <img src="https://avatars.githubusercontent.com/u/96832092?v=4" width="100px;" alt=""/>
                <br />
                <sub><b>Lesmana Wahyu</b></sub>
            </a>
        </td>
        <td align="center">
            <a href="https://github.com/2404-cws">
                <img src="https://avatars.githubusercontent.com/u/71650496?v=4" width="100px;" alt=""/>
                <br />
                <sub><b>Christian Wahyu S</b></sub>
            </a>
        </td>
        <td align="center">
            <a href="https://github.com/thisham">
                <img src="https://avatars.githubusercontent.com/u/59078748?v=4" width="100px;" alt=""/>
                <br />
                <sub><b>Hamdan Yuwafi</b></sub>
            </a>
        </td>
        <td align="center">
            <a href="https://github.com/danilhendrasr">
                <img src="https://avatars.githubusercontent.com/u/45989466?v=4" width="100px;" alt=""/>
                <br />
                <sub><b>Danil Hendra Suryawan</b></sub>
            </a>
        </td>
        <td align="center">
            <a href="https://github.com/FirmanFA">
                <img src="https://avatars.githubusercontent.com/u/34387452?v=4" width="100px;" alt=""/>
                <br />
                <sub><b>Firmansyah Firdaus Anhar</b></sub>
            </a>
        </td>
    </tr>
    <tr>
      <td align="center">
        Captain
      </td>
      <td align="center">
        Figma Box Resizer
      </td>
      <td align="center">
        Bug Creator of Backend District
      </td>
      <td align="center">
        Bug Creator of Web District
      </td>
      <td align="center">
        Bug Creator of Mobile District
      </td>
    </tr>
</table>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[semantic-badge]: https://img.shields.io/badge/semantic--release-angular-e10079?style=for-the-badge&logo=semantic-release
[semantic-url]: https://github.com/semantic-release/semantic-release
[codecov-shield]: https://img.shields.io/codecov/c/gh/Serikat-Kuli-Ketik/todolist-backend?label=CODECOV&logo=codecov&style=for-the-badge&token=A6TELI1YMV
[codecov-url]: https://codecov.io/gh/Serikat-Kuli-Ketik/todolist-backend
