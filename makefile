SHELL := /bin/bash

hello:
	echo "Hello from make file"

owner:
	if [[ $$(whoami) == "root" ]]; \
	then \
		echo "Owner is in"; \
	else \
		echo "Other is in"; \
	fi

operating:
	if [[ $$(uname) == "Linux" ]]; \
	then \
		echo "Running is linux"; \
	else \
		echo "Running in other"; \
	fi
	
