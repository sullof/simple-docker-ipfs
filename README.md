# Simple-docker-ipfs


This is a minimalistic repo to setup an IPFS node using docker

### Configuration

Create a file like `.env` (for example, copying the file `sample.env.local`) like this:
```
export IPFS_STAGING=`pwd`/staging
export IPFS_DATA=`pwd`/data

```

The first time you run init, you should set the profile, if you are fine with PROFILE=server run
```
source .env && ./init.sh
```
When IPFS is ready, Ctrl-C to stop it.

Next, run 
```
source .env && ./daemon.sh
```
To execute any command exec it inside the container.  
For example, to add this README.md:
```
cp README.md staging/.
docker exec ipfs_host ipfs add -r /export/README.md
```


