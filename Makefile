.PHONY: start
start:
	@echo "Starting containers..."
	@docker-compose up -f docker/docker-compose.yml

.PHONY: update-conf
update-conf:
	@echo "Updating configuration..."
	@sudo cp /etc/nginx/sites-enabled/blog_toledompm_xyz nginx/bu/${date +%s}.conf
	@sudo cp nginx/blog.conf /etc/nginx/sites-enabled/blog_toledompm_xyz
	@sudo nginx -t
	@sudo systemctl restart nginx
