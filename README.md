# webserver30-tomcat8-s2i

A simple s2i override which will grab a dependency, rather than build one during the assemble phase

## Files...

These have been taken from the registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat8-openshift image

- /usr/local/s2i/assemble
- /usr/local/s2i/run
- /usr/local/s2i/save-artifacts

## Binary Deployments

See the [Binary Deployments Blog](https://blog.openshift.com/binary-deployments-openshift-3/)

We use the environment variable ARTIFACT_URL to specify where the artifact should be curled from...

