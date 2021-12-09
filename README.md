This is a sample repo, and should *not* be used as-is in production.

This repo demonstrates how to run an IPFS node that uses S3 as its data store. The IPFS node can be run from the cli with Node.js, or as a container.

### To run with Node.js:

- Create a `.env` file and populate it with the S3 bucket name and your AWS Access ID and Secret. See `.sampleenv` for an example.
- Run `node index.js`

### To run as a Docker container:

- Build the image: `docker build . -t ipfs-fargate-s3-yourname`
- Run the container. Be sure to specify the image name from the previous step, and set the appropriate values for the environment variables: `docker run -d -e S3BUCKET='your-ipfs-bucket' -e ACCESS_KEY_ID='SAMPLE' -e SECRET_ACCESS_KEY='SAMPLE' ipfs-fargate-s3-yourname`