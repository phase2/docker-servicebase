# Outrigger Service Base

> This is a CentOS 7-based image that has had the S6-overlay init system and confd added to it.

[![](https://images.microbadger.com/badges/version/outrigger/servicebase.svg)](https://microbadger.com/images/outrigger/servicebase "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/outrigger/servicebase.svg)](https://microbadger.com/images/outrigger/servicebase "Get your own image badge on microbadger.com")

Outrigger Service Base provides the foundation for Outrigger Docker Images that
need to be built on a more complete operating system environment.

For more documentation on how Outrigger images are constructed and how to work
with them, please [see the documentation](http://docs.outrigger.sh/en/latest/).

## Features

### S6 Init System

All images derived from Service Base use the [S6 init system](https://github.com/just-containers/s6-overlay)
for more sophisticated process management.

### confd

S6 is used to trigger [confd](https://github.com/kelseyhightower/confd) templating
of environment configurations. Service Base itself does not make signifcant use
of these templates, but Docker images extending from this may use it to create
configurable configuration using environment variables.

## Security Reports

Please email outrigger@phase2technology.com with security concerns.

## Maintainers

[![Phase2 Logo](https://www.phase2technology.com/wp-content/uploads/2015/06/logo-retina.png)](https://www.phase2technology.com)
