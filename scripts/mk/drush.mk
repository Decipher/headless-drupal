# TARGETS

## Execute a Drush (DRUpal SHell) command.
drush:
	@$(call title,Executing Drush command inside php container)
	@$(call drush,$(filter-out $@,$(MAKECMDGOALS)))

## Drush Makefile command.
define drush
	@$(call exec,docker-compose exec cli sh -c "drush -r ${DRUSH_ROOT} -l ${DRUSH_URL} ${1}")
endef

# https://stackoverflow.com/a/6273809/1826109
%:
	@:
