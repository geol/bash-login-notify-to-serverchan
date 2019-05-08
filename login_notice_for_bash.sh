#!/bin/bash                                      
#================================================                                               
# OS Passed:    Armbian                          
# Description:  bash登录时自动发送登录提醒       
# Author:       kuretru    
# Github:       https://github.com/kuretru/                      
#================================================                                        
                                                 
#Server酱调用密钥                                
key='xxxxxxxxxxxxxxx'                                      
                                                 
user=$(whoami)                    
hostname=$(hostname)                      
ip=$(strings /var/log/lastlog | grep -vE "192.168
"\|"\pts/*")                             
now=$(date "+%Y.%m.%d_%H.%M.%S")                 
if [[ $ip =~ ^([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$ ]]                                             
        then wget -q --spider https://sc.ftqq.com
/${key}.send?text="${hostname}登录提醒"\&desp="IP
地址：${ip}                                      
                                                 
用户名：${user}                                  
                                                 
登陆时间：${now}"                                
else                                           
        sudo lastlog -Cu root
        echo "“局域网登陆”"                      
fi
