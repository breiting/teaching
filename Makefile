build:
	podman build -t teaching .

run:
	podman run --rm -it -p 8000:8000 -v ${PWD}:/docs teaching serve -f mkdocs.yml -a 0.0.0.0:8000

deploy:
	podman run --rm -it -v ${PWD}:/docs teaching gh-deploy -f mkdocs.yml

