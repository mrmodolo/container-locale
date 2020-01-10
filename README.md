# Alterando a localização do container


## Criando a imagem

buildah bud -t locale-fuse-java-openshift .

## Testando

podman run -it --rm locale-fuse-java-openshift bash /opt/building/run.sh

## Refrências

Logging With SLF4J <https://dzone.com/articles/logging-with-slf4j>
SLF4J user manual <http://www.slf4j.org/manual.html>
How can a container's timezone be set? <https://access.redhat.com/solutions/1350193>
CHAPTER 6. BUILDING CONTAINER IMAGES WITH BUILDAH <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/building-container-images-with-buildah_building-running-and-managing-containers>
