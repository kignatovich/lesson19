# lesson19



## Часть первая ANSIBLE

  -   Написать ansible скрипт который установит пользователя в чистую систему, установит пакеты git, sudo, mc, htop (и еще любые как на ваш взгляд полезные), добавит пользователя в группы sudo и docker.

  -   Написать скрипт который развернет на этой машине от лица нового пользователя вэб сервер, настроит конфиг для nginx, чтоб nginx принимал запросы от домена tms.local. И выводил страничку на которой видно: название сервера, uptime, avg.

   -  Написать скрипт который развернет docker окружение.

## Подготовка виртуального окружения (env)
```shell
front@front:~/lesson19/lesson19$ virtualenv env
front@front:~/lesson19/lesson19$ source env/bin/activate
front@front:~/lesson19/lesson19$ pip install ansible
front@front:~/lesson19/lesson19$ pip freeze > requirements.txt
```

### Проверка работы ansible
```shell
(env) front@front:~/lesson19/lesson19$ ansible all -i inventory.ini -m ping
Enter passphrase for key '/home/front/.ssh/id_rsa': 
192.168.0.141 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
(env) front@front:~/lesson19/lesson19$ 
```
### запук playbook
```shell
ansible-playbook -i inventory.ini create_user_and_install.yaml -K
```
- Ключ "К" - из за того, что я использую не root юзера, а пользователя который требует повышения прав и ввода пароля.

### Вывод web-сервера NGINX:
![nginx](https://i.ibb.co/0tjmqd6/image.png)


### Написать скрипт который развернет docker окружение.

<details><summary>Ответ</summary>
<p>

#### Выполним в терминале inux

```shell
   ansible-galaxy collection install community.docker
```
#### Вывод команды
```shell
(env) front@front:~/lesson19/lesson19$ ansible-galaxy collection install community.docker
Starting galaxy collection install process
Process install dependency map
Starting collection install process
Downloading https://galaxy.ansible.com/download/community-docker-3.4.0.tar.gz to /home/front/.ansible/tmp/ansible-local-69857vso5_fb8/tmppijsz9ny/community-docker-3.4.0-447l8xzl
Installing 'community.docker:3.4.0' to '/home/front/.ansible/collections/ansible_collections/community/docker'
community.docker:3.4.0 was installed successfully
```
</p>
</details>


## Список источников:

01. [galaxy.ansible.com](https://galaxy.ansible.com/)
02. [meritocracy.is](https://meritocracy.is/blog/2017/07/24/manage-nginx-configurations-ansible/)
03. [Установка докер с помощью ansible](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-20-04)