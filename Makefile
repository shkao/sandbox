.PHONY: shell claude build clean

IMAGE_NAME = claude-devcontainer
DOCKER_RUN = docker run -it \
	--cap-add=NET_ADMIN \
	--cap-add=NET_RAW \
	-v "$$(pwd):/workspace" \
	-v "$$HOME/.claude:/home/node/.claude" \
	$(IMAGE_NAME)

build:
	docker build -t $(IMAGE_NAME) .devcontainer/

shell:
	$(DOCKER_RUN) /bin/zsh

claude:
	$(DOCKER_RUN) /bin/zsh -c "claude --dangerously-skip-permissions"

clean:
	docker rmi $(IMAGE_NAME) 2>/dev/null || true