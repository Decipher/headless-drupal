# TARGETS

## Display this help message.
help:
	@echo ''
	@echo 'Usage:'
	@echo '  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)



# VARIABLES.

TARGET_MAX_CHAR_NUM := 32

## Colors for output text.

GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)



# FUNCTIONS.

## Print a line break to screen.
define break
	printf "\n"
endef

## Print a command to screen.
define command
	printf "> ${YELLOW}${subst ",',${1}}${RESET}\n\n"
endef

define confirm
	echo "${1} [y/N] " && read ans && [ $${ans:-N} == y ]
endef

## Execute command and print to screen.
define exec
	printf "$$ ${YELLOW}${subst ",',${1}}${RESET}\n\n" && $1
endef

## Print text to screen.
define print
	printf "${1}\n"
endef

## Print a title/heading to screen.
define title
	printf "\n\n${GREEN}>>> ${1}...${RESET}\n\n\n"
endef
