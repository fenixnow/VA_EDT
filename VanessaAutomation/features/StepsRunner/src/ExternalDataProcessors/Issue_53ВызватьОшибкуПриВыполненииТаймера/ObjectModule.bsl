//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 


// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции


// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреШагСНомеромИмеетСтатусFailed(Парам01)","ВТестируемомЭкземпляреШагСНомеромИмеетСтатусFailed","Тогда в тестируемом экземпляре шаг с номером 3 имеет статус Failed");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ПолучитьМакет(ИмяМакета);
КонецФункции
	

// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////


// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры


// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


//Тогда в тестируемом экземпляре шаг с номером 3 имеет статус Failed
//@ВТестируемомЭкземпляреШагСНомеромИмеетСтатусFailed(Парам01)
Процедура ВТестируемомЭкземпляреШагСНомеромИмеетСтатусFailed(НомерШага) Экспорт
	Дерево          = Контекст.ОткрытаяФормаVanessaBehavoir.ДеревоТестов;
	СтрокаКаталог  = Дерево.Строки[0];
	СтрокаФичи      = СтрокаКаталог.Строки[0];
	СтрокаСценария  = СтрокаФичи.Строки[0];
	//Сообщить("" + СтрокаШага.Статус);
	Если СтрокаСценария.Статус <> "Failed" Тогда
		ТекстСообщения = "Сценарий должен иметь статус ""Failed"", а получился %1";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",СтрокаСценария.Статус);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	СтрокаШага = СтрокаСценария.Строки[0];
	Если СтрокаШага.Статус <> "Failed" Тогда
		ТекстСообщения = "Шаг должен иметь статус ""Failed"", а получился %1";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",СтрокаШага.Статус);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

//окончание текста модуля  
