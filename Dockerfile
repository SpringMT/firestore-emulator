FROM google/cloud-sdk:alpine

RUN apk add --update --no-cache openjdk8-jre && gcloud components install cloud-firestore-emulator beta --quiet

EXPOSE 8080

CMD gcloud beta emulators firestore start --host-port=localhost:8080 --verbosity debug
