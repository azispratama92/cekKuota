#!/bin/bash

# ---------------------------------------------
# Author: Azis R. Pratama
#
# Creation date: 05 June 2017
#
# Description: Script mmcli untuk mengetahui sisa kuota internet modem.
#				
# ---------------------------------------------
echo ===================================================== 
echo Mendeteksi perangkat modem ....
echo ===================================================== 
sleep 01
mmcli -L
sleep 01
echo ===================================================== 
echo Memulai perintah MMCLI
echo =====================================================
mmcli -m 1 --3gpp-ussd-initiate="*123#"
sleep 03
mmcli -m 1 --3gpp-ussd-respond="7"
sleep 03
mmcli -m 1 --3gpp-ussd-respond="3"
sleep 03
mmcli -m 1 --3gpp-ussd-respond="1"
sleep 02
mmcli -m 1 --3gpp-ussd-cancel






