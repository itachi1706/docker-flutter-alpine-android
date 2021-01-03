# Alpine Flutter Android images for Docker
Creating Alpine-based images for Flutter with the Android SDK

This is an extension of [my android image](https://hub.docker.com/r/itachi1706/android-alpine-sdk) with the addition of Flutter

## Versions
These tags are based on various official channels of Flutter
* latest/stable - channel stable
* beta - channel beta
* dev - channel dev
* master - channel master

There are also tagged releases of a specific version of Flutter if needed. These versions are split between `legacy` and non-legacy tags. You should always be using the non-legacy tags as the legacy tags are there for compatability reasons and may actually fail to run
* `legacy-{version}` tags signify legacy builds of Flutter (Before 6 May 2020)
* `{version}` tags signify current, non-legacy builds of Flutter