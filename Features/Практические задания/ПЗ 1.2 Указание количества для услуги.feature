﻿#language: ru

@tree

Функционал: Добавление услуги в документ заказ

Как администратор я хочу
добавить услугу в документ заказа
чтобы проверить возможность указания количества услуги 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Дано я закрываю все окна клиентского приложения

Сценарий: Создание услуги и указание её количества в существующем документе
* Открытие последнего заказа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к последней строке
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
*Добавление услуги с указанием количества в таблицу товаров
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '54 000,00'
	И в таблице "Товары" в поле "ТоварыКоличество" я ввожу текст "3"
	И в таблице "Товары" я завершаю редактирование строки
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд


 





