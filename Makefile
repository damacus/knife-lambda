.PHONY: build

build:
	# bundle lock
	docker buildx bake build --load
run:
	docker run -p 9000:8080 damacus/knife-lambda
