# Sorting::Methods

Welcome to sorting methods. Here can be find some of sort methods execution describe bellow:

* Insertion Sort
* Selection Sort

## Requirements

* **[Docker 18.02.0-ce-rc1](https://www.ruby-lang.org/en/)**
* **[docker-compose 1.11.2](https://docs.docker.com/compose/)**

## Installation

1. After clone project, in folder exec the command to create docker images containing the necessary for app execution:

```
docker-compose up
```


## Usage

To use sort methods you **MUST** pass a path of a file which **MUST HAVE a sequence of numbers splitted by jump line**. When you start the application using the command run_app, it will wait a path of file.
 
 **OBS:** In the path **data/inputs** you can find a file named "counting.txt" used to test the application but, there have a directory which have other input files. 
 
 Example:
 
 "data/inputs/couting.txt"

* Makefile commands:

To run application:

```
make run_app
```

To use Ruby bash of project

```
make bash
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[cdjohnnatha]/sorting-methods.
