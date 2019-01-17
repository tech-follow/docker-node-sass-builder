# Docker Node SASS builder

```
docker run --rm \
 -v `pwd`:/usr/src/app/ \
 node-sass-builder \
sh -c "yarn install && yarn build"
```