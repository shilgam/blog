# Blog

Simple blog app built by following getting started guide:  http://guides.rubyonrails.org/getting_started.html

## Getting Started

### Prerequisities
Docker is installed

### Usage

Build container:
```
docker build -t demo .
docker run -itP demo
```

Run the test suite:
```
docker run -it --rm demo bundle exec rake test
```
