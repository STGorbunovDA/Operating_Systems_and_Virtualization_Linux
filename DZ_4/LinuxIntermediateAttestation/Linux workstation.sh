#######################################################	Практика

#######################################################	apt / apt-get
# получить список обновлений для всех пакетов ОС
sudo apt update

# узнать: кому именно нужны обновления
sudo apt list --upgradable

# запустить обновление
sudo apt upgrade


# Установка программ
sudo apt-get install zip
sudo apt install tree

# Удаление программ
# удалим пакет zip
sudo apt-get remove zip

# можно удалить пакет вместе с конфигами:
sudo apt-get purge zip

# посмотрим все пакеты на машине Linux
dpkg -l

# посмотрим инфо о пакете tree
dpkg –l tree

# посмотрим количество установленных пакетов
dpkg -l | wc -l
 
# Фильтрация списка ПО конвейером
dpkg –l | grep pyhton3


# snap
# если snap не установлен, то это можно сделать
sudo apt install snapd

# поиск пакета в snap
sudo snap find opera

# установим браузер Опера через snap
sudo snap install opera

# посмотрим список установленных snap-пакетов
snap list

# удалим Оперу через snap
snap remove opera

#######################################################	Работа с репозиториями
# посмотрим содержимое файла со списком репозиториев
cat /etc/apt/sources.list

# apt-add-repository - команда для добавления репозиториев
apt-add-repository --help

#######################################################	iptables
# если вдруг утилита не установлена
sudo apt install iptables

# заблокируем трафик с определенного IP-адреса
sudo iptables -t filter -A INPUT -s 192.168.56.1 -j DROP
# или так:
sudo iptables -t filter -A INPUT -s 192.168.56.1 -j REJECT

# очистим правила
sudo iptables -F INPUT

# разрешим трафик с запрещенного IP-адреса
sudo iptables -t filter -A INPUT -s 192.168.56.1 -j ACCEPT

# посмотрим правила
sudo iptables -L

# Запрещаем исходящий трафик по протоколу
sudo iptables –A OUTPUT –p tcp --dport 443 –j REJECT

# сохраним конфиги iptables
sudo iptables-save > ~/iptables_config

# восстановим сохраненные конфиги iptables
sudo iptables-restore < ~/iptables_config
