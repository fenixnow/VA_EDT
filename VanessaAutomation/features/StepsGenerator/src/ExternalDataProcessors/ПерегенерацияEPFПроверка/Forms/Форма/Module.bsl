//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


&НаКлиенте
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

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемыйПроверочныйФайлEpfУжеСуществует()","ОжидаемыйПроверочныйФайлEpfУжеСуществует","ожидаемый проверочный файл epf уже существует");
	ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()","СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации","сгенерированный проверочный epf прошел проверку на корректность после перегенерации");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	ИмяОжидаемогоФайла = Ванесса.Объект.КаталогИнструментов + "\features\Support\Templates\step_definitions\ФичаДляПроверкиПерегенерацииEPFПроверка.epf";
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры

&НаСервере
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Макет = ОбъектСервер.ПолучитьМакет(ИмяМакета);
	Возврат  Макет;
КонецФункции	

&НаКлиенте
//ожидаемый проверочный файл epf уже существует
//@ОжидаемыйПроверочныйФайлEpfУжеСуществует()
Процедура ОжидаемыйПроверочныйФайлEpfУжеСуществует() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла);
	Если ФайлСуществует Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла);
	Ванесса.ПроверитьНеРавенство(ФайлСуществует,Истина,"В этот момент Файл " + ИмяОжидаемогоФайла + " НЕ должен существовать.");
	
	КопияКонтекст = Контекст;
	Контекст      = "";
	
	Макет = ПолучитьМакетСервер("Макет");
	Макет.Записать(ИмяОжидаемогоФайла);
	
	Контекст = КопияКонтекст;
	
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла,"должен существовать после записи макета");
	Ванесса.ПроверитьРавенство(ФайлСуществует,Истина,"Файл " + ИмяОжидаемогоФайла + " должен существовать после записи макета.");
КонецПроцедуры


&НаКлиенте
Процедура ОбработкаПослеПомещенияФайлаСгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации(Результат, АдресХранилища, ВыбранноеИмяФайла, ДополнительныеПараметры) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ИмяФайла",Контекст.ИмяОжидаемогоФайла);
	ИмяОбработки = Ванесса.ПодключитьВнешнююОбработкуСервер(Контекст.ИмяОжидаемогоФайла,Ложь,ДопПараметры);
	
	Попытка
		ФормаОбработки = ПолучитьФорму("ВнешняяОбработка." + ИмяОбработки + ".Форма.Форма",,,Истина);
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	//должен был остаться этот шаг
	Попытка
		ФормаОбработки.ТестоваяФункция();
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры


&НаКлиенте
//сгенерированный проверочный epf прошел проверку на корректность после перегенерации
//@СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()
Процедура СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации() Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	
	ДополнительныеПараметры = Новый Структура;
	Оповещение = Вычислить("Новый ОписаниеОповещения(""ОбработкаПослеПомещенияФайлаСгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации"", ЭтаФорма, ДополнительныеПараметры)");
	Выполнить("НачатьПомещениеФайла(Оповещение, , ИмяОжидаемогоФайла, Ложь, УникальныйИдентификатор);");
КонецПроцедуры

//окончание текста модуля