#!/bin/bash

# 👾 Script de varredura discreta com Nmap
# Uso: bash escanear_rede.sh 192.168.0.0/24

REDE=$1
ALVO=$2

echo  (\__/)
     (='.'=)    SpiderNode Scaneando !
     (")_(")  


echo "[*] Detectando hosts ativos em $REDE..."
nmap -sn -PE -PS22,80,443 -n $REDE -oN hosts_ativos.txt

echo "[*] Escaneando top 100 portas de $ALVO com SYN Stealth..."
nmap -sS -T2 -Pn --top-ports 100 $ALVO -oN portas_top100.txt

echo "[*] Detectando serviços discretamente..."
nmap -sV --version-light -T2 $ALVO -oN servicos_leves.txt

echo "[*] Rodando script padrão (-sC) silencioso..."
nmap -sC -sS -T2 -Pn -p- $ALVO -oN analise_completa.txt

echo "[✓] Varredura completa. Resultados salvos."

#Juliano.Web

