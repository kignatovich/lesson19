# lesson19



## Часть первая ANSIBLE

  -   Написать ansible скрипт который установит пользователя в чистую систему, установит пакеты git, sudo, mc, htop (и еще любые как на ваш взгляд полезные), добавит пользователя в группы sudo и docker.

  -   Написать скрипт который развернет на этой машине от лица нового пользователя вэб сервер, настроит конфиг для nginx, чтоб nginx принимал запросы от домена tms.local. И выводил страничку на которой видно: название сервера, uptime, avg.

   -  Написать скрипт который развернет docker окружение.
   

## Написать скрипт который развернет docker окружение.

<details><summary>Ответ</summary>
<p>

#### Выполним в терминале inux

```shell
   ansible-galaxy collection install community.docker
```
#### Вывод команды
```shell
   Куча текста
```
</p>
</details>


## Список источников:

01. [galaxy.ansible.com](https://galaxy.ansible.com/)
02. [meritocracy.is](https://meritocracy.is/blog/2017/07/24/manage-nginx-configurations-ansible/)