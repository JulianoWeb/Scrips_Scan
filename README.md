# SpiderNode 🕷️

Script Bash para realizar varreduras de rede utilizando o Nmap.

## Funcionalidades

* Detecta hosts ativos
* Verifica portas
* Detecta serviços
* Realiza uma análise completa
* Salva os resultados em arquivos `.txt`

## Como usar

Dê permissão ao script:

```bash
chmod +x escanear_rede.sh
```

Execute:

```bash
./escanear_rede.sh 192.168.0.0/24 192.168.0.10
```

## Resultados

Os resultados são salvos em:

```text
hosts_ativos.txt
portas_top100.txt
servicos_leves.txt
analise_completa.txt
```

## Tecnologias

* Bash
* Nmap

