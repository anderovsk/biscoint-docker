#!/bin/bash
echo 'Setting environment variables'
sed -i '/apiKey/ s/paste-your-api-key/'"$APIKEY"'/g' /biscoint/config.json
sed -i '/apiSecret/ s/paste-your-api-key/'"$APISECRET"'/g' /biscoint/config.json
sed -i '/amount/ s/100/'"$AMOUNT"'/g' /biscoint/config.json
sed -i '/amountCurrency/ s/BRL/'"$AMOUNTCURRENCY"'/g' /biscoint/config.json
sed -i '/initialBuy/ s/true/'"$INITIALBUY"'/g' /biscoint/config.json
sed -i '/minProfitPercent/ s/0.02/'"$MINPROFITPERCENT"'/g' /biscoint/config.json
sed -i '/intervalSeconds/ s/null/'"$INTERVALSECONDS"'/g' /biscoint/config.json
sed -i '/playSound/ s/false/'"$PLAYSOUND"'/g' /biscoint/config.json
sed -i '/simulation/ s/false/'"$SIMULATION"'/g' /biscoint/config.json
sed -i '/executeMissedSecondLeg/ s/ture/'"$EXECUTEMISSEDSECONDLOEG"'/g' /biscoint/config.json
echo 'Environment Ready'
cat /biscoint/config.json
npm install
npm start