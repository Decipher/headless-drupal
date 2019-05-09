# TARGETS

composer-install:
	@$(call title,Composer: Installing)
	@$(call exec,composer install)
