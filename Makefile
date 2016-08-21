all: clean test flake8 pre-commit
.PHONY: all

clean:
	rm -rf .tox
	rm -rf *.egg-info
	find redhot tests -name '*.pyc' -delete -or -name '*.pyo' -delete -or -name '__pycache__' -delete

test:
	tox

flake8:
	tox -e flake8

pre-commit:
	tox -e pre-commit
