#!/bin/bash
#jumpserver
#v1.0 by dream 2020-07-02
# trap "" HUP INT OUIT TSTP
web_centos01=10.10.10.195
web_ubuntu=10.10.10.217
web_banwagong=138.128.222.176
web_xiaomi=10.10.10.200
web_pi=10.10.10.148
web_git=10.10.10.11
web_dns=10.10.10.12
web_nas=10.10.10.19
web_ftp=10.10.10.20
web_01=10.10.10.21
web_02=10.10.10.22
web_03=10.10.10.23
web_04=10.10.10.24
web_05=10.10.10.25
web_06=10.10.10.26
web_07=10.10.10.27
web_08=10.10.10.28
web_virtualBox=127.0.0.1

while true; do
	clear
	cat <<-EOF
	+-------------------------------------+
	|           系统登录管理              |
	|           1.client                  |
	|           2.xiaomi                  |
	|           3.homeassistant服务器     |
	|           4.搬瓦工服务器            |
	|           5.本地虚拟机centos_01     |
	|           6.本地虚拟机centos_02     |
	|           7.本地虚拟机centos_03     |
	|           8.本地虚拟机centos_04     |
	|           9.本地虚拟机centos_05     |
	|           10.本地虚拟机centos7u601  |
	|           11.本地虚拟机centos7u602  |
	|           12.本地虚拟机centos7u603  |
	|           13.本地虚拟机centos7u604  |
	|           q.退出                    |
	+-------------------------------------+
	EOF

	read  -p "请输入选定的数字: " num
	case "$num" in
		1)
			ssh root@${web_centos01}
			;;
		2)
			ssh root@${web_xiaomi}
			;;
		3)
			ssh root@${web_ubuntu}
			;;
		4)
			ssh -p 29276 root@${web_banwagong}
			;;
		5)
			ssh -p 2222 dream@${web_virtualBox}
			;;
		6)
			ssh -p 3333 dream@${web_virtualBox}
			;;
		7)
			ssh -p 4444 dream@${web_virtualBox}
			;;
		8)
			ssh -p 5555 dream@${web_virtualBox}
			;;
		9)
			ssh -p 6666 dream@${web_virtualBox}
			;;
		10)
			ssh -p 7777 dream@${web_virtualBox}
			;;
		11)
			ssh -p 8888 dream@${web_virtualBox}
			;;
		12)
			ssh -p 9999 dream@${web_virtualBox}
			;;
		13)
			ssh -p 10000 dream@${web_virtualBox}
			;;
		q)
			exit 0
			;;
		"")
			;;
		*)
			echo "error"
	esac
done
