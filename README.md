# Diploma project

## Оптимізація використання програмного забезпечення grapheneX у звязці з Ansible для посилення безпеки ОС хостів у локальній мережі

### Опис проекту:
Використання ansible для автоматизації харденінгу ОС в локальній мережі за допомогою grapheneX. Я поки бачу лише два методи використання ансібла в такому ключі:
1) виконання команд харденнінгу напряму у хості
2) встановлення графену і запуск його як агента з певними пресетами

Для реалізації проекту я обрав саме другий метод.


### структура каталогу:
 - screenshots
 - configs
 - doc - diploma text
 - playbooks
 - workplace - vagrant cluster for project (CentOS 7)
 - modules - hardening modules for centos7


# Usage:
```git clone ...```
```cd diploma/workplace```
```vagrant up```
```vagrant ssh master```
```ansible-playbook -i inventory_workers.txt playbooks/grapheneX/install_graphene.yml``` (YOU NEED TO PLACE grapheneX dir into /vagrant)

```ansible-playbook -i inventory_workers.txt playbooks/grapheneX/run_module.yml```
