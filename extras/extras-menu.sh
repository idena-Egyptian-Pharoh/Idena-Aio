#!/bin/bash


      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H" ;}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   MARK(){ $e "\e[7m";}
 UNMARK(){ $e "\e[27m";}
      R(){ CLEAR ;stty sane;CLEAR;};
   HEAD(){ for each in $(seq 1 15);do
           $E "   \xE2\x94\x82                                          \xE2\x94\x82"
           done
           MARK;TPUT 1 5
           $E "              Idena Extras Menu           " ;UNMARK;
           TPUT 3 14
           $E "      SELECT (1-6)        " ;UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 15 5
           $E " UP \xE2\x86\x91 \xE2\x86\x93 DOWN    ENTER - SELECT,NEXT       ";UNMARK;}
  ARROW(){ IFS= read -s -n1 key 2>/dev/null >&2
           if [[ $key = $ESC ]];then 
              read -s -n1 key 2>/dev/null >&2;
              if [[ $key = \[ ]]; then
                 read -s -n1 key 2>/dev/null >&2;
                 if [[ $key = A ]]; then echo up;fi
                 if [[ $key = B ]];then echo dn;fi
              fi
           fi
           if [[ "$key" == "$($e \\x0A)" ]];then echo enter;fi;}
     M0(){ TPUT  4 20; $e "1)reboot";}
     M1(){ TPUT  5 20; $e "2)Crontab";}
	 M2(){ TPUT  6 20; $e "3)Disk Usage";}
	 M3(){ TPUT  7 20; $e "4)Delete Temp Files";}
	 M4(){ TPUT  8 20; $e "5)Main Menu";}
     M5(){ TPUT  9 20; $e "6)exit";}
     
      LM=5
	MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
     ES(){ MARK;$e "ENTER = main menu ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == enter ]];then R;reset && sudo reboot ;fi;;
        1) S=M1;SC;if [[ $cur == enter ]];then R;reset && crontab -e && exit 0 ;fi;;
		2) S=M2;SC;if [[ $cur == enter ]];then R; sudo du -sh /home && sudo du -sh /root && exit 0 ;fi;;
		3) S=M3;SC;if [[ $cur == enter ]];then R; rm -rf /home/datadir-node1/ipfs/* && rm -rf /home/datadir-node2/ipfs/* && exit 0 ;fi;;
		4) S=M4;SC;if [[ $cur == enter ]];then R;reset && bash /root/idena/idena-menu.sh ;fi;;
        5) S=M5;SC;if [[ $cur == enter ]];then R;exit 0 && reset && exit 0 ;fi;;
 esac;POS;done	

