NAMESPACE ?= $(USER)
STAGE := stage3

_build-%:
	tag="$(subst _build-,,$@)" ; \
	echo $(NAMESPACE)/gentoo-$(NAME):$${tag}; \
	docker image build . \
	  --cache-from $(NAMESPACE)/gentoo-$(NAME):$${tag} \
		--tag $(NAMESPACE)/gentoo-$(NAME):$${tag} \
		--build-arg STAGE=$(STAGE) \
		--build-arg TAG=$(NAME)-openrc

build\:amd64\:%:
	@tag="$(subst build:amd64:,,$@)"; \
	$(MAKE_COMMAND) -s NAME=amd64 -f $(firstword $(MAKEFILE_LIST)) \
		_build-$${tag}
.PHONY: build\:amd64\:%

build\:amd64:
	@$(MAKE_COMMAND) -s NAME=amd64 -f $(firstword $(MAKEFILE_LIST)) \
		_build-latest
.PHONY: build\:amd64

build\:amd64-nomultilib\:%:
	@tag="$(subst build:amd64-nomultilib:,,$@)"; \
	$(MAKE_COMMAND) -s NAME=amd64-nomultilib -f $(firstword $(MAKEFILE_LIST)) \
		_build-$${tag}
.PHONY: build\:amd64-nomultilib\:%

build\:amd64-nomultilib:
	@$(MAKE_COMMAND) -s NAME=amd64-nomultilib -f $(firstword $(MAKEFILE_LIST)) \
		_build-latest
.PHONY: build\:amd64-nomultilib
