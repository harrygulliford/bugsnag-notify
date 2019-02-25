FROM alpine:3.9

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ENV RELEASE_STAGE=production
ENV SOURCE_CONTROL_PROVIDER=github

CMD curl -sSf https://build.bugsnag.com/ --header "Content-Type: application/json" --data "{ \
    \"apiKey\": \"${BUGSNAG_API_KEY}\", \
    \"appVersion\": \"${APP_VERSION}\", \
    \"releaseStage\": \"${RELEASE_STAGE}\", \
    \"sourceControl\": { \
        \"provider\": \"${SOURCE_CONTROL_PROVIDER}\", \
        \"repository\": \"${REPOSITORY_URL}\", \
        \"revision\": \"${APP_REVISION}\" \
    } \
}"