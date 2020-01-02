# build:stable:1.40.0
_build-stable-%:
	tag="$(subst _build-stable-,,$@)" ; \
	echo $${tag}; \
	docker image build . \
	  --file $(DOCKERFILE) \
		--tag grauwoelfchen/rust:$${tag} \
		--build-arg ARCH=amd64-nomultilib \
		--build-arg VERSION=$(VERSION)

build\:stable\:%:
	@version="$(subst build:stable:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=$${version} \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-$${version}-stable
.PHONY: build\:stable\:%

build\:stable:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=stable \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-stable
.PHONY: build\:stable

build\:stable-fearless:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile-fearless VERSION=stable \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-stable-fearless
.PHONY: build\:stable-fearless

# build:nightly:2019-12-23
_build-nightly-%:
	tag="$(subst _build-nightly-,,$@)" ; \
	echo $${tag}; \
	docker image build . \
	  --file $(DOCKERFILE) \
		--tag grauwoelfchen/rust:$${tag} \
		--build-arg ARCH=amd64-nomultilib \
		--build-arg VERSION=$(VERSION)

build\:nightly\:%:
	@version="$(subst build:nightly:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=nightly-$${version} \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly-$${version}
.PHONY: build\:nightly\:%

build\:nightly:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=nightly \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly
.PHONY: build\:stable

build\:nightly-fearless:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=nightly \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly-fearless
.PHONY: build\:nightly-fearless
