format: ## Run pre-commit hooks
	pre-commit run -a

sync: ## Merge changes from main branch to your current branch
	git pull
	git pull origin main

test: ## Run not slow tests
	pytest -k "not slow"

test-full: ## Run all tests
	pytest

train: ## Train the model
	python src/train.py

debug: ## Enter debugging mode with pdb
	#
	# tips:
	# - use "import pdb; pdb.set_trace()" to set breakpoint
	# - use "h" to print all commands
	# - use "n" to execute the next line
	# - use "c" to run until the breakpoint is hit
	# - use "l" to print src code around current line, "ll" for full function code
	# - docs: https://docs.python.org/3/library/pdb.html
	#
	python -m pdb src/train.py debug=default
