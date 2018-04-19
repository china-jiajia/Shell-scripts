#!/bin/bash
###########################################################
#Date:2018.04.09                                          #
#Comment:http_clear_logs.sh                               #
#Path:/opt/shell                                          #
#Crontab: 0 3 * * * sh /opt/shell/http_clear_logs.sh      #
#Vesion:v1.0                                              #
###########################################################
 
#the date 7 days ago
Date_7=`date -d "-7 day" +%Y%m%d`
log_path="/usr/local/apache2/logs/"
 
#clear logs
rm  ${log_path}/access.${Date_7}.log -fr &&
rm  ${log_path}/error.${Date_7}.log -fr &&
rm  ${log_path}/static.error.${Date_7}.log -fr &&
rm  ${log_path}/static.access.${Date_7}.log -fr &&
rm  ${log_path}/static.access.${Date_7}.log -fr &&
rm  ${log_path}/op.mobage.cn.${Date_7}..error.log -fr &&
rm  ${log_path}/www.mobage.cn.${Date_7}.log -fr &&




# 记录所有错误及标准输出到 http-clean.log 中
exec 3>&1 4>&2 1>> httpd_clean_`date +%Y%m%d`.log 2>&1