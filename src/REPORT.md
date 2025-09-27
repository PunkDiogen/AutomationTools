## Part 1. Удаленное конфигурирование узла через Ansible

- **1. Создал с помощью Vagrant три машины: manager, node01, node02. Прокинул порты node01 на локальную машину для доступа к пока еще не развернутому микросервисному приложению.**

**СКРИНШОТ:**

![img](screens/vagrant.png)

![img](screens/vm.png)

- **2. Подготовил manager как рабочую станцию для удаленного конфигурирования:**
        - 2.1. Зашел на manager.
        - 2.2. Проверил подключение к node01 через ssh по приватной сети.

**СКРИНШОТ:**

![img](screens/ssh.png)

        - 2.3. Сгенерировал ssh-ключ для подключения к node01 из manager (без passphrase).

**СКРИНШОТ:**

![img](screens/ssh_node1.png)

        - 2.4. Скопировал на manager docker-compose файл и исходный код микросервисов.

**СКРИНШОТ:**

![img](screens/services.png)

        - 2.5. Установил Ansible на менеджер и создал папку ansible, в которой создал inventory-файл.

**СКРИНШОТ:**

![img](screens/ansible.png)

        - 2.6. Использовал модуль ping для проверки подключения через Ansible.

**СКРИНШОТ:**

![img](screens/ping.png)

- **3. Написал первый плейбук для Ansible, который выполняет apt update, устанавливает docker, docker-compose, копирует compose-файл из manager'а и разворачивает микросервисное приложение.**

**СКРИНШОТ:**

![img](screens/play1.png)

![img](screens/containers.png)

- **4. Прогнал заготовленные тесты через postman и удостоверился, что все они проходят успешно.**

**СКРИНШОТ:**

![img](screens/postman.png)

- **5. Сформировал три роли:**

        - 5.1. роль application выполняет развертывание микросервисного приложения при помощи docker-compose;
        - 5.2. apache устанавливает и запускает стандартный apache сервер;
        - 5.3. postgres устанавливает и запускает postgres, создает базу данных с произвольной таблицей

**СКРИНШОТ:**

![img](screens/roles.png)

        - 5.4. Назначил первую роль node01 и вторые две роли node02, проверил postman-тестами работоспособность микросервисного приложения, удостоверился в доступности postgres и apache-сервера.

**СКРИНШОТ:**

![img](screens/site.png)

![img](screens/postman1.png)

![img](screens/apache.png)

![img](screens/db.png)

____________________________________________________________________

## Part 2. Service Discovery

- **1. Написал два конфигурационных файла для consul:**

        -1.1 consul_server.hcl:
                - настроил агент как сервер;
                - указал в advertise_addr интерфейс, направленный во внутреннюю сеть Vagrant.
        
        -1.2 consul_client.hcl:
                - настроить агент как клиент;
                - указал в advertise_addr интерфейс, направленный во внутреннюю сеть Vagrant.


**СКРИНШОТ:**

![img](screens/configs.png)

- **2. Создал с помощью Vagrant четыре машины: consul_server, api, manager и db.**

        - 2.1 Прокинул порт 8082 с api на локальную машину для доступа к пока еще не развернутому api.
        - 2.2 Прокинул порт 8500 с consul_server для доступа к ui consul.

**СКРИНШОТ:**

![img](screens/Vagrant2.png)

![img](screens/vm2.png)

- **3. Написать плейбук для ansible и четыре роли и таски к ним:**

        - install_consul_server
        - install_consul_client
        - install_db
        - install_hotels_service

**СКРИНШОТ:**

![img](screens/roles2.png)

![img](screens/server.png)

![img](screens/db1.png)

![img](screens/hotel.png)

- **4. Проверил работоспособность CRUD-операций над сервисом отелей.**

*В коде приложения есть проблемы. Из CRUD работает только просмотр и добавление. При попытке обновить или удалить отель по его номеру выходит ошибка (конфликт типов)*

**СКРИНШОТ:**

![img](screens/crud.png)

![img](screens/crud2.png)

![img](screens/error.png)







