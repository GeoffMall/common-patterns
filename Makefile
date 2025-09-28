# Makefile for running structurizr-site-generatr via Docker

IMAGE = ghcr.io/avisi-cloud/structurizr-site-generatr
TAG = latest

.PHONY: help pull version serve generate-site

## Pull the structurizr-site-generatr image
pull:
	docker pull $(IMAGE):$(TAG)

## Show CLI help
help:
	docker run -it --rm \
	  ghcr.io/avisi-cloud/structurizr-site-generatr \
	  --help

## Print version info
version:
	docker run -it --rm \
	  ghcr.io/avisi-cloud/structurizr-site-generatr \
	  version

## Start a development server
serve:
	docker run -it --rm \
	  -u $(id -u):$(id -g) \
	  -v ${PWD}:/var/model \
	  -w /var/model \
	  -p 8080:8080 \
	  ghcr.io/avisi-cloud/structurizr-site-generatr \
	  serve --workspace-file workspace.dsl --assets-dir assets

## Generate a static site
# Example:
#   make generate-site WORKSPACE=workspace.dsl ASSETS=assets OUT=./site
generate-site:
	docker run -it --rm \
	  -u $(id -u):$(id -g) \
	  -v ${PWD}:/var/model \
	  ghcr.io/avisi-cloud/structurizr-site-generatr \
  	  generate-site --workspace-file workspace.dsl --assets-dir assets --output-dir ./docs