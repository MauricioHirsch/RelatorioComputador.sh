#!/bin/bash

#########################################################################################
###                                                                                   ###  
###     SHELL SCRIPT: EXIBE DADOS MÁQUINAS RODANDO S.O COM DISTRIBUÍÇÕES LINUX        ###  
###            AUTOR: MAURICIO CEZAR HIRSCH                                           ###      
###             DATA: 25/08/2022                                                      ###  
###                                                                                   ###  
#########################################################################################

###############################   VARIÁVEIS   ###########################################


HOSTNAME=$(hostname)

VERSAO_LINUX=$(lsb_release -d | cut -c14-)

KERNEL=$(uname -r)

MEMORIA=$(free -g)

PROCESSADOR=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)

QTDE_CORE=$(cat /proc/cpuinfo | grep "model name" | wc -l)

NOMECOMPUTADOR=$(hostname)

PART_DISCOS=$(df -H | egrep -v '(tmpfs)')

UPTIME=$(uptime -s)


###############################  SAÍDA TERMINAL  #############################################
clear
echo "======================================================================================="
echo " ***  RELÁTÓRIO MÁQUINA: $HOSTNAME - DATA: $(date)                                     "
echo "======================================================================================="
echo ""
echo "Versão Linux: $VERSAO_LINUX"
echo ""
echo "Versão Kernel: $KERNEL"
echo ""
echo "Modelo Processador: $PROCESSADOR"
echo ""
echo "Quantidade Núcleos Processador: $QTDE_CORE"
echo ""
echo "Total Memória Ram:$MEMORIA"
echo ""
echo "Partições de discos:$PART_DISCOS"
echo ""
echo "Ativo desde: $UPTIME"
echo ""
echo "======================================================================================="
echo " *** FIM RELATÓRIO ***                                                                 "
echo "======================================================================================="