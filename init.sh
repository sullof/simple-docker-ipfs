
mkdir -p $IPFS_DATA
mkdir -p $IPFS_STAGING

docker run -it --rm \
  --name ipfs_host \
  -v $IPFS_STAGING:/export \
  -v $IPFS_DATA:/data/ipfs \
  -e IPFS_PROFILE=server \
  -p 4001:4001 \
  -p 4001:4001/udp \
  -p 127.0.0.1:8080:8080 \
  -p 127.0.0.1:5001:5001 \
  ipfs/go-ipfs:latest
