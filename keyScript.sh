
for i in $(seq 0 60); do
  NODE="node-$i"
  
  ./numbat-utils/keygenerator
  cp validatorKey.pem ~/numbat-nodes/$NODE/config/
  
  zip $NODE.zip validatorKey.pem
  mv $NODE.zip $HOME/VALIDATOR_KEYS/
done
