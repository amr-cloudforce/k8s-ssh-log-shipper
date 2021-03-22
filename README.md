This repo creates a **HELM** package for shpping logs from a remote **ssh-server**. The logs will become the logs of the **Kubernetes** container running the shipper. Hence,the logs of the remote server can be viewed with any generic Kubernetes log shipper like fluentd. 

Here is how it could look like in an ELK stack in Kibana, as part of the generic shipping of all log files to Elasticsearch.

![image](https://user-images.githubusercontent.com/73740780/112063353-91d9f100-8b61-11eb-8f31-68e485288c3d.png)




## Prerequisites
- Skaffold 
- Helm
- (optional) Private Image repo 


## Quickstart

- **LOGIN** username@host
- **YOUR LOGS PATH** Path to your log files to be shipped. Can include wildcards
- **PORT** SSH PORT 
- **SSH KEY** Your ssh private key file

1. `create secret generic wp-log-shipper   --from-literal logs=<YOUR LOGS PATH> --from-literal login=<LOGIN> --from-literal port=<PORT> -nmonitoring`
2. `create secret generic ssh-private-key   --from-file id_rsa=<YOUR SSH PRIVATE KEY FILE> -nmonitoring`
3. `skaffold dev`
