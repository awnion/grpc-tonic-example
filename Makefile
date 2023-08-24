
.PHONY: pb
pb:
	cd grpc-client && pnpm install && pnpm run pb

.PHONY: fmt
fmt:
	taplo fmt
	cargo +nightly fmt --all -v

.PHONY: fix
fix:
	cargo clippy --fix --allow-dirty
