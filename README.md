# ElbRegistrator

[![CircleCI](https://circleci.com/gh/rafaeljesus/elb_registrator.svg?style=svg)](https://circleci.com/gh/rafaeljesus/elb_registrator)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/rafaeljesus/elb_registrator.svg)](https://beta.hexfaktor.org/github/rafaeljesus/elb_registrator)

* Register EC2 instances with an ELB

## Configuration
* `AWS_ACCESS_KEY_ID` - AWS access key id
* `AWS_SECRET_ACCESS_KEY` - AWS secret access key
* `AWS_REGION` - AWS region
* `ELB_NAME` - name of ELB to subscribe instances to
* `REGISTRATION_INTERVAL` - interval (in ms) on which to run registration

## Docker
This repository has automated image builds on hub.docker.com after successfully building and testing. See the `deployment` section of [circle.yml](circle.yml) for details on how this is done. Note that three environment variables need to be set on CircleCI for the deployment to work:

  * DOCKER_EMAIL - The email address associated with the user with push access to the Docker Hub repository
  * DOCKER_USER - Docker Hub username
  * DOCKER_PASS - Docker Hub password (these are all stored encrypted on CircleCI, and you can create a deployment user with limited permission on Docker Hub if you like)

run:
```
$ docker-machine start default
$ eval $(docker-machine env default)
$ docker build -t rafaeljesus/elb_registrator .
```

## Contributing
- Fork it
- Create your feature branch (`git checkout -b my-new-feature`)
- Commit your changes (`git commit -am 'Add some feature'`)
- Push to the branch (`git push origin my-new-feature`)
- Create new Pull Request

### Maintaners

* [Rafael Jesus](https://github.com/rafaeljesus)
