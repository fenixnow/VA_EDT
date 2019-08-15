﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка нажатия F11 на условие внутри цикла




Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Проверка нажатия F11 на условие внутри цикла
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаРаботыF11ДляУсловияВнутриЦикла"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                            |
		| 'И Я запоминаю значение выражения "1" в переменную "КоличествоНачальное"' |

	И я выбираю пункт контекстного меню "Выполнить шаг" на элементе формы с именем "ДеревоТестов"
	И пауза 3
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                      |
		| 'И в течение 100 секунд я выполняю' |

	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                                                 |
		| 'Если переменная "КоличествоНачальное" имеет значение 1 Тогда' |
	И я выбираю пункт контекстного меню "Выполнить шаг" на элементе формы с именем "ДеревоТестов"
	И пауза 3
	
	#текущая строка должна быть та, что внутри условия
	И в таблице "ДеревоТестов" поле с именем "ДеревоТестовИмя" имеет значение 'И Я запоминаю значение выражения "2" в переменную "КоличествоНачальное"'
		