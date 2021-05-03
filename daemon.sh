
docker run -d \
  --name ipfs_host \
  -v $IPFS_STAGING:/export \
  -v $IPFS_DATA:/data/ipfs \
  -p 4001:4001 \
  -p 4001:4001/udp \
  -p 127.0.0.1:8080:8080 \
  -p 127.0.0.1:5001:5001 \
  ipfs/go-ipfs:latest
