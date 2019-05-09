# TARGETS

## Execute a Drush (DRUpal SHell) command.
drush:
	@$(call title,Executing Drush command inside php container)
	@$(call exec,docker-compose exec cli sh -c "drush -r ${DRUSH_ROOT} -l ${DRUSH_URL} $(filter-out $@,$(MAKECMDGOALS))")

# https://stackoverflow.com/a/6273809/1826109
%:
	@:
