#!/bin/bash
#jumpserver
#v1.0 by dream 2020-07-02
# trap "" HUP INT OUIT TSTP

web_centos01=10.10.10.195
web_ubuntu=10.10.10.217
web_banwagong=daydream666.xyz
web_xiaomi=10.10.10.200
web_pi=10.10.10.10
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
	|           5.本地虚拟机centos8       |
	|           6.ftp服务器               |
	|           7.docker私有仓库          |
	|           8.web_server服务器        |
	|           9.web2服务器              |
	|           10.pi服务器               |
	|           11.Git服务器              |
	|           12.DNS服务器              |
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
			ssh -p 2222 dream@${web_virtualBox}
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
			ssh root@${web_pi}
			;;
		11)
			ssh root@${web_git}
			;;
		12)
			ssh root@${web_dns}
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
