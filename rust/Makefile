NAMESPACE ?= $(USER)

# build:stable:1.40.0
_build-stable-%:
	tag="$(subst _build-stable-,,$@)" ; \
	echo $(NAMESPACE)/rust:$${tag}; \
	docker image build . \
	  --file $(DOCKERFILE) \
		--tag $(NAMESPACE)/rust:$${tag} \
		--build-arg ARCH=amd64-nomultilib \
		--build-arg VERSION=$(VERSION)

build\:stable\:latest: build\:stable
.PHONY: build\:stable\:latest

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

build\:stable-fearless\:latest: build\:stable-fearless
.PHONY: build\:stable-fearless\:latest

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
		--tag $(NAMESPACE)/rust:$${tag} \
		--build-arg ARCH=amd64-nomultilib \
		--build-arg VERSION=$(VERSION)

build\:nightly\:latest: build\:nightly
.PHONY: build\:nightly\:latest

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
.PHONY: build\:nightly

build\:nightly-fearless\:latest: build\:nightly-fearless
.PHONY: build\:nightly-fearless\:latest

build\:nightly-fearless:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile VERSION=nightly \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly-fearless
.PHONY: build\:nightly-fearless
