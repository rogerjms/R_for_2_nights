#安装R软件，更新apt-get
sh -c "echo deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu precise/ >>/etc/apt/sources.list"
apt-get update
apt-get install r-base
gpg -a --export 51716619E084DAB9| sudo apt-key add -  
#拷贝配置文件
#原则上说，Hadoop所有的MapReduce Job都是一个jar包。