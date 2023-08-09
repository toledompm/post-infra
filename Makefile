.PHONY: start
start:
	@echo "Starting containers..."
	@docker-compose up -f docker/docker-compose.yml
