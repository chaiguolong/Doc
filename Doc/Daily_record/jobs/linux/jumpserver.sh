#!/bin/bash
#jumpserver
#v1.0 by dream 2020-07-02
# trap "" HUP INT OUIT TSTP
web_centos01=10.10.10.195
web_ubuntu=10.10.10.217
web_banwagong=138.128.201.208
web_xiaomi=10.10.10.200
web_pi=10.10.10.10
web_git=10.10.10.11
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

while true; do
	clear
	cat <<-EOF
	+-------------------------------------+
	|           系统登录管理              |
	|           1.client                  |
	|           2.xiaomi                  |
	|           3.homeassistant服务器     |
	|           4.搬瓦工服务器            |
	|           5.pi服务器                |
	|           6.ftp服务器               |
	|           7.docker私有仓库          |
	|           8.web1服务器              |
	|           9.web2服务器              |
	|           10.Git服务器              |
	|           11.web4服务器             |
	|           12.web5服务器             |
	|           13.web6服务器             |
	|           14.web7服务器             |
	|           15.web8服务器             |
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
			ssh root@${web_pi}
			;;
		6)
			ssh root@${web_ftp}
			;;
		7)
			ssh root@${web_nas}
			;;
		8)
			ssh root@${web_01}
			;;
		9)
			ssh root@${web_02}
			;;
		10)
			ssh root@${web_git}
			;;
		11)
			ssh root@${web_04}
			;;
		12)
			ssh root@${web_05}
			;;
		13)
			ssh root@${web_06}
			;;
		14)
			ssh root@${web_07}
			;;
		15)
			ssh root@${web_08}
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
