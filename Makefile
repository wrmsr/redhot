.PHONY: all clean .dev .prod

all: test flake8 pre-commit

clean:
	rm -rf .dev
	rm -rf .prod
	rm -rf .tox
	rm -rf *.egg-info
	find redhot tests -name '*.pyc' -delete -or -name '*.pyo' -delete -or -name '__pycache__' -delete

test:
	tox

flake8:
	tox -e flake8

pre-commit:
	tox -e pre-commit

.dev:
	virtualenv .dev
	.dev/bin/pip install -r requirements-dev.txt

.prod:
	virtualenv .prod
	.prod/bin/pip install -r requirements.txt
