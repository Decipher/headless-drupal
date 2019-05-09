# TARGETS

git-submodule-update:
	@$(call title,Git: Updating submodules)
	@$(call exec,git submodule update --init --recursive)
