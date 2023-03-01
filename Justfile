# Autoload a .env if one exists
set dotenv-load

# Print out some help
default:
	@just --list --unsorted

docker-build:
	DOCKER_BUILDKIT=1 docker build -t multisig-labs/safe-cli .

safe-cli *args:
  docker run --rm -it multisig-labs/safe-cli safe-cli {{args}}



