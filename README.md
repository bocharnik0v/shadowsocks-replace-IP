# Replacement dynamic IP addresses in the file config.json

Небольшой скрипт который меняет старый динамический IP адрес на новый в конфигурационном файле config.json.

# How to use.

```
root@srv:~/test# cat /etc/shadowsocks/config.json
```

```
{
    "server":"XXX.XX.XXX.XX",
    "server_port":8388,
    "password":"mypassword",
    "timeout":300,
    "method":"chacha20-ietf"
    ...
}
```

где `XXX.XX.XXX.XX` это страый IP адрес

```
root@srv:~/test# ./shadowsocks_replaceIP_config.sh
```

Profit.
