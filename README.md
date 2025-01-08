## Задача 1

1. Возьмите код:
 - из ДЗ к лекции 4,
 - из демо к лекции 4.

2. Проверьте код с помощью tflint и checkov. Вам не нужно инициализировать этот проект.

![hw4](task1/hw4.png)
![demo](task1/demo.png)
![hw-check1](task1/hw-check1.png)
![demo-check1](task1/demo-check1.png)
![demo-check2](task1/demo-check2.png)
![demo-check3](task1/demo-check3.png)
![demo-check4](task1/demo-check4.png)

3. Перечислите, какие типы ошибок обнаружены в проекте (без дублей).

>Ответ: не указаны ограничения по версиям при объявлении провайдеров, объявлены не используемые переменные, в объявлении модулей указаны ссылки на git-репозитории без указания конкретного коммита

## Задача 2

1. Возьмите ваш GitHub-репозиторий с выполненным ДЗ 4 в ветке 'terraform-04' и сделайте из него ветку 'terraform-05'.

![branch3](task2/branch5.png)
![checkout](task2/checkout.png)

2. Повторите демонстрацию лекции: настройте YDB, S3 bucket, yandex service account, права доступа и мигрируйте state проекта в S3 с блокировками. Предоставьте скриншоты процесса в качестве ответа.

![service_acc](task2/service_acc.png)
![new_key](task2/new_key.png)
![s3](task2/s3.png)
![s3_acl](task2/s3_acl.png)
![init](task2/init.png)

>Выполним команду terraform apply, видим, что файл terraform.tfstate появился в нашем бакете S3

![tfstate](task2/tfstate.png)

> Настраиваем YDB

![ydb](task2/ydb.png)
![ydb_acl](task2/ydb_acl.png)
![table](task2/table.png)

3. Закоммитьте в ветку 'terraform-05' все изменения.

