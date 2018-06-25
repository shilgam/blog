# Blog

Simple blog app built by following getting started guide:  http://guides.rubyonrails.org/getting_started.html

## Getting Started

### Prerequisities
Docker is installed

### Usage

Build container:
```
docker build -t blog .
docker run -itP blog
```

Run the test suite:
```
docker run -it --rm blog "rake test"
```
