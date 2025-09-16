#
# Dockerfile which is based on the standard mkdocs-material image, but adds
# some more plugins which are required.
#

FROM squidfunk/mkdocs-material

RUN pip install --no-cache-dir mkdocs-encryptcontent-plugin
RUN pip install --no-cache-dir mkdocs-mermaid2-plugin
RUN pip install --no-cache-dir pymdown-extensions
