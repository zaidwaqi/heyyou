.PHONY: clean

default:
	@echo "No target specified. Do nothing."

clean:
	@rm -rf .pytest_cache
	@rm -rf dist
	@rm -rf env
	@rm -rf src/*.egg-info
	@rm -rf src/heyyou/__pycache__
	@rm -rf tests/__pycache__
	@rm -rf tests/.pytest_cache
