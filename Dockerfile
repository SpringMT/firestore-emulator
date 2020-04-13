FROM google/cloud-sdk:alpine

RUN apk add --update --no-cache openjdk8-jre && gcloud components install cloud-firestore-emulator beta --quiet

EXPOSE 8075

ENV FIRESTORE_PORT 8080

CMD gcloud beta emulators firestore start --host-port=localhost:${FIRESTORE_PORT}
