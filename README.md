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

1. Возьмите ваш GitHub-репозиторий с выполненным ДЗ 4 в ветке 'terraform-04' и сделайте из него ветку ['terraform-05'](https://github.com/ua4wne/ter-hw-04/tree/terraform-05).

![branch3](branch5.png)
![checkout](checkout.png)

2. Повторите демонстрацию лекции: настройте YDB, S3 bucket, yandex service account, права доступа и мигрируйте state проекта в S3 с блокировками. Предоставьте скриншоты процесса в качестве ответа.

![service_acc](service_acc.png)
![new_key](new_key.png)
![s3](s3.png)
![s3_acl](s3_acl.png)
![init](init.png)

>Выполним команду terraform apply, видим, что файл terraform.tfstate появился в нашем бакете S3

![tfstate](tfstate.png)

> Настраиваем YDB

![ydb](ydb.png)
![ydb_acl](ydb_acl.png)
![table](table.png)

3. Закоммитьте в ветку 'terraform-05' все изменения.
4. Откройте в проекте terraform console, а в другом окне из этой же директории попробуйте запустить terraform apply.

![reconfig](reconfig.png)
![console](console.png)
![plan](plan.png)

5. Пришлите ответ об ошибке доступа к state.

>Error message: operation error DynamoDB: PutItem, https response error StatusCode: 400, RequestID: bfab7804-4815-43d5-bd7f-1fef87b38c4d, ConditionalCheckFailedException: Condition not satisfied

6. Принудительно разблокируйте state. Пришлите команду и вывод.

![unlock](unlock.png)

## Задача 3

1. Сделайте в GitHub из ветки 'terraform-05' новую ветку 'terraform-hotfix'.


