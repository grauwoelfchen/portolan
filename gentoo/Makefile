_build-%:
	tag="$(subst _build-,,$@)" ; \
	echo $${tag}; \
	docker image build . \
		-t grauwoelfchen/gentoo-$(NAME):$${tag} \
		--build-arg STAGE=stage3-$(NAME)

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
