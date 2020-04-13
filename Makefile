PREFIX = springmt

build:
	docker build --pull -t ${PREFIX}/firestore-emulator .

push: build
	docker push ${PREFIX}/firestore-emulator

