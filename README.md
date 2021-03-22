## Prerequisites
- Skaffold 
- Helm
- (optional) Private Image repo 


## Quickstart

- **LOGIN** username@host
- **YOUR LOGS PATH** Path to your log files to be shipped. Can include wildcards
- **PORT** SSH PORT 
- ** SSH KEY** Your ssh private key file

1. `create secret generic wp-log-shipper   --from-literal logs=<YOUR LOGS PATH> --from-literal login=<LOGIN> --from-literal port=<PORT> -nmonitoring`
2. `create secret generic ssh-private-key   --from-file id_rsa=<YOUR SSH PRIVATE KEY FILE> -nmonitoring`
3. skaffold dev
