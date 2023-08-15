.PHONY: start
start:
	docker compose -f docker/docker-compose.yml up -d

.PHONY: full-restart
full-restart:
	docker compose -f docker/docker-compose.yml down
	$(MAKE) start

.PHONY: update-conf
update-conf:
	sudo cp /etc/nginx/sites-enabled/blog_toledompm_xyz nginx/bu/$(shell date +%s).conf
	sudo cp nginx/blog.conf /etc/nginx/sites-enabled/blog_toledompm_xyz
	sudo nginx -t && sudo systemctl restart nginx
