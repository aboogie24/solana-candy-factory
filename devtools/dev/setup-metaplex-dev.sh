# echo "[INFO] Cleaning older cache folder for metaplex"
rm -rf ./.cache/devnet-temp
pwd
echo "[INFO] Uploading all resources"
ts-node ~/metaplex/js/packages/cli/src/candy-machine-v1-cli.ts upload ./nfts-sources --env devnet --keypair ~/.config/solana/candyfactory-devnet.json
echo "[INFO] Creating candy machine"
ts-node ~/metaplex/js/packages/cli/src/candy-machine-v1-cli.ts create_candy_machine --env devnet --keypair ~/.config/solana/candyfactory-devnet.json --price 0.01 > ./logs/dev/candy-machine-log.txt
echo "[INFO] Setting minting start date (goLiveDate)"
ts-node ~/metaplex/js/packages/cli/src/candy-machine-v1-cli.ts update_candy_machine -d "16 Sep 2021 00:00:00 UTC" --env devnet --keypair ~/.config/solana/candyfactory-devnet.json > ./logs/dev/candy-machine-start-date.txt




