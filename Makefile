
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

.PHONY: run-client
run-client:
	cd grpc-web-client && pnpm install && pnpm run proto && pnpm build && pnpm run preview

.PHONY: run-client-dev
run-client-dev:
	cd grpc-web-client && pnpm install && pnpm run proto && pnpm run dev

.PHONY: run-server
run-server:
	cargo run -r

.PHONY: clean-client
clean-client:
	rm -rf "grpc-web-client/node_modules"
	rm -rf "grpc-web-client/dist"
