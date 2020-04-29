⚠️ This project is no longer receiving updates.

# Bugsnag Notify

Bugsnag Notify is a tiny Docker container, based on [alpine](https://hub.docker.com/_/alpine), that can be integrated into your CI/CD pipeline to inform Bugsnag of new builds and deployments for your application.

## Usage
```
docker run harrygulliford/bugsnag-notify
```

### Environment Variables
* `BUGSNAG_API_KEY` (required)
* `APP_VERSION` (required)
* `RELEASE_STAGE` (optional, default: `production`)
* `SOURCE_CONTROL_PROVIDER` (optional, default: `github`)
* `REPOSITORY_URL` (required)
* `APP_REVISION` (required)

## License
Bugsnag Notify is open-source software licensed under the MIT license.
