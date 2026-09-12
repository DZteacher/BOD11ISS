#!/bin/bash
#Замена на названия своей команды
ORG="DZteacher"
#Список участников
STUDENTS=(
"AnisenkoIA-BOD11ISS"
"AnoshinRV-BOD11ISS"
"BelanAA-BOD11ISS"
"BelukiavichusMA-BOD11ISS"
"BilashukMI-BOD11ISS"
"GoikinGA-BOD11ISS"
"DanilovLA-BOD11ISS"
"DiatlovEF-BOD11ISS"
"ZaplatinAA-BOD11ISS"
"IvzhenkoVS-BOD11ISS"
"KovalehEA-BOD11ISS"
"KosiakovEA-BOD11ISS"
"LitvinenkoKA-BOD11ISS"
"MesheriakovEA-BOD11ISS"
"MonastryrnyiKD-BOD11ISS"
"OkunIV-BOD11ISS"
"OrlovIS-BOD11ISS"
"PotapovKA-BOD11ISS"
"SavchenkoAS-BOD11ISS"
"SlavinVO-BOD11ISS"
"TurkinSA-BOD11ISS"
"FedorovAA-BOD11ISS"
)
for LOGIN in "${STUDENTS[@]}",do
  REPO="Работы-${LOGIN}"
  echo"Создаю: $REPO"
  #Создаю приватный репозиторий
  gh repo create "$ORG/$REPO" --private --descripshion "Работы ученика $LOGIN"
  #добовляю ученика с правами "Write"
  gh api --method PUT "/repos/$ORG/$REPO/collaborators/$LOGIN" -f permission=push
  echo"Готово: $REPO"
done
