//начало текста модуля

Перем Ванесса;


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


Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемыйФайлФичаДляПерегенерацияEPFШагиНеИзФичиУжеСуществует()","ОжидаемыйФайлФичаДляПерегенерацияEPFШагиНеИзФичиУжеСуществует","И ожидаемый файл ФичаДляПерегенерацияEPFШагиНеИзФичи уже существует");
	ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерацииЧтоВНёмОсталисьШагиНеИзФичи()","СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерацииЧтоВНёмОсталисьШагиНеИзФичи","И сгенерированный epf прошел проверку на корректность после перегенерации, что в нём остались шаги не из фичи");

	Возврат ВсеТесты;
КонецФункции


Процедура ПередНачаломСценария() Экспорт
	ИмяОжидаемогоФайла = Ванесса.КаталогИнструментов + "\features\Support\Templates\step_definitions\ФичаДляПерегенерацияEPFШагиНеИзФичи.epf";
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
КонецПроцедуры


Процедура ПередОкончаниемСценария() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ТекстСообщения = "ИмяОжидаемогоФайла=%1";
	ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяОжидаемогоФайла);
	Сообщить(ТекстСообщения);
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры




//И ожидаемый файл ФичаДляПерегенерацияEPFШагиНеИзФичи уже существует
//@ОжидаемыйФайлФичаДляПерегенерацияEPFШагиНеИзФичиУжеСуществует()
Процедура ОжидаемыйФайлФичаДляПерегенерацияEPFШагиНеИзФичиУжеСуществует() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	Ванесса.ПроверитьНеРавенство(ФайлПроверкаСуществования.Существует(),Истина,"В этот момент Файл " + ИмяОжидаемогоФайла + " НЕ должен существовать.");
	
	
	Макет = ПолучитьМакет("Макет");
	Макет.Записать(ИмяОжидаемогоФайла);
	
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Ванесса.ПроверитьРавенство(ФайлПроверкаСуществования.Существует(),Истина,"Файл " + ИмяОжидаемогоФайла + " должен существовать.");
КонецПроцедуры


//И сгенерированный epf прошел проверку на корректность после перегенерации, что в нём остались шаги не из фичи
//@СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерацииЧтоВНёмОсталисьШагиНеИзФичи()
Процедура СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерацииЧтоВНёмОсталисьШагиНеИзФичи() Экспорт
	Обработка          = ВнешниеОбработки.Создать(Контекст.ИмяОжидаемогоФайла);
	ЭкспортируемыеШаги = Обработка.ПолучитьСписокТестов(Ванесса);
	
	Нашли = Ложь;
	Для каждого Элем Из ЭкспортируемыеШаги Цикл
		Если НРег(Элем.Снипет) = НРег("ТестовыйШаг()") Тогда
			Нашли = Истина;
		КонецЕсли;	 
	КонецЦикла;
	
	Если Не Нашли Тогда
		ВызватьИсключение "Не найден шаг ТестовыйШаг после перегенерации EPF";
	КонецЕсли;	 
КонецПроцедуры

//окончание текста модуля  
