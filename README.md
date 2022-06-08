provider-quest-historical-multiaddrs-data
===

Where are all the Filecoin storage providers physically located?

Where were they previously located?

Can we still assign locations for Storage Providers for which we
have collected no IP address data?

This repo contains raw and processed data used to answer these questions.

Most of the data is stored as JSON file. Since there are a lot of them, and
some are quite large, we are using [Git Large File Storage](https://git-lfs.github.com/)
together with [git-lfs-ipfs](https://github.com/sameer/git-lfs-ipfs).

The plan is to "pin" the data for the large files to IPFS via IPFS Cluster.  We
will also store the data into Filecoin itself.

The raw data comes from:

* https://provider.quest/
* https://lilium.sh/

It is processed using scripts found here:

https://github.com/provider-quest/provider-quest-historical-multiaddrs

# License

## License

Dual-licensed under [MIT](https://github.com/filecoin-project/lotus/blob/master/LICENSE-MIT) + [Apache 2.0](https://github.com/filecoin-project/lotus/blob/master/LICENSE-APACHE)

Data is licenced as [CC-BY-SA 3.0](https://ipfs.io/ipfs/QmVreNvKsQmQZ83T86cWSjPu2vR3yZHGPm5jnxFuunEB9u) unless otherwised noted.



