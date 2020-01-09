NAMESPACE ?= $(USER)

# build:stable:1.40.0
_build-stable-%:
	tag="$(subst _build-stable-,,$@)" ; \
	echo $(NAMESPACE)/rust-vet-tools:$${tag}; \
	docker image build . \
	  --file $(DOCKERFILE) \
		--tag $(NAMESPACE)/rust-vet-tools:$${tag} \
		--build-arg BASE=$${tag}

build\:stable\:latest: build\:stable
.PHONY: build\:stable\:latest

build\:stable\:%:
	@version="$(subst build:stable:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-$${version}-stable
.PHONY: build\:stable\:%

build\:stable:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-stable
.PHONY: build\:stable

build\:stable-fearless\:latest: build\:stable-fearless
.PHONY: build\:stable-fearless\:latest

build\:stable-fearless\:%:
	@version="$(subst build:stable-fearless:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-$${version}-stable-fearless
.PHONY: build\:stable-fearless\:%

build\:stable-fearless:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-stable-stable-fearless
.PHONY: build\:stable-fearless

# build:nightly:2019-12-23
_build-nightly-%:
	tag="$(subst _build-nightly-,,$@)" ; \
	echo $(NAMESPACE)/rust-vet-tools:$${tag}; \
	docker image build . \
	  --file $(DOCKERFILE) \
		--tag $(NAMESPACE)/rust-vet-tools:$${tag} \
		--build-arg BASE=$${tag}

build\:nightly\:latest: build\:nightly
.PHONY: build\:nightly\:latest

build\:nightly\:%:
	@date="$(subst build:nightly:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly-$${date}
.PHONY: build\:nightly\:%

build\:nightly:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly
.PHONY: build\:nightly

build\:nightly-fearless\:latest: build\:nightly-fearless
.PHONY: build\:nightly-fearless\:latest

build\:nightly-fearless\:%:
	@date="$(subst build:nightly-fearless:,,$@)"; \
	$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-$${date}-nightly-fearless
.PHONY: build\:nightly-fearless\:%

build\:nightly-fearless:
	@$(MAKE_COMMAND) \
		-s DOCKERFILE=Dockerfile \
		-f $(firstword $(MAKEFILE_LIST)) _build-nightly-nightly-fearless
.PHONY: build\:nightly-fearless
