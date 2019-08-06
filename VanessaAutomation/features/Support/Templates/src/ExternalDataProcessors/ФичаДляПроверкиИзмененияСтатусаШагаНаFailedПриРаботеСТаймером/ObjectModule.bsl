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

	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПрерываюВыполнениеШаговИПодключаюТаймер(Парам01)","ЯПрерываюВыполнениеШаговИПодключаюТаймер","Когда я прерываю выполнение шагов и подключаю таймер ""СлужебныйТаймер""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВторойШагНеДолженВыполнится()","ВторойШагНеДолженВыполнится","Тогда второй шаг не должен выполнится");

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
	Ванесса.ПолучитьФорму("Форма").ХостСистема.ПродолжитьВыполнениеШагов();
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


Процедура СлужебныйТаймер()
	Ванесса.ПродолжитьВыполнениеШагов(Истина);
КонецПроцедуры


//Когда я прерываю выполнение шагов и подключаю таймер "СлужебныйТаймер"
//@ЯПрерываюВыполнениеШаговИПодключаюТаймер(Парам01)
Процедура ЯПрерываюВыполнениеШаговИПодключаюТаймер(ИмяОбработчика) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	//ПодключитьОбработчикОжидания(ИмяОбработчика,1,Истина);
	ОбычнаяФорма = ПолучитьФорму("ОбычнаяФорма");
	ОбычнаяФорма.ПодключитьТаймер(Ванесса);
	ОбычнаяФорма.Открыть();
	
КонецПроцедуры


//Тогда второй шаг не должен выполнится
//@ВторойШагНеДолженВыполнится()
Процедура ВторойШагНеДолженВыполнится() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля  