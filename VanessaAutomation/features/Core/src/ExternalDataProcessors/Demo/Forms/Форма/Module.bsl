//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
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

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"УМеняЕстьТекстовыйРедакторAtom()","УМеняЕстьТекстовыйРедакторAtom","Дано У меня есть текстовый редактор Atom");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОбрамляюСловоКавычками(Парам01)","ЯОбрамляюСловоКавычками","Когда Я обрамляю слово кавычками ""Тест""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучаюСловоОбрамленноеКавычкамиКакПараметрПроцедуры()","ЯПолучаюСловоОбрамленноеКавычкамиКакПараметрПроцедуры","Тогда Я получаю слово обрамленное кавычками как параметр процедуры");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЭтаПроцедураБудетНазываться(Парам01)","ЭтаПроцедураБудетНазываться","И эта процедура будет называться ""ЯОбрамляюСловоКавычками(Парам01)""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОбрамляюПеременнуюУгловымиСкобками(Тест1)","ЯОбрамляюПеременнуюУгловымиСкобками","Когда Я обрамляю переменную угловыми скобками <Тест1>");
	ДобавитьШагВМассивТестов(ВсеТесты,"МнеНеобходимоУказатьКлючевоеСловоИТаблицуЗначенийПараметров(Парам01)","МнеНеобходимоУказатьКлючевоеСловоИТаблицуЗначенийПараметров","Тогда мне необходимо указать ключевое слово ""Примеры"" и таблицу значений параметров");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Дано У меня есть текстовый редактор Atom
//@УМеняЕстьТекстовыйРедакторAtom()
Процедура УМеняЕстьТекстовыйРедакторAtom() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда Я обрамляю слово кавычками "Тест"
//@ЯОбрамляюСловоКавычками(Парам01)
Процедура ЯОбрамляюСловоКавычками(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда Я получаю слово обрамленное кавычками как параметр процедуры
//@ЯПолучаюСловоОбрамленноеКавычкамиКакПараметрПроцедуры()
Процедура ЯПолучаюСловоОбрамленноеКавычкамиКакПараметрПроцедуры() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//И эта процедура будет называться "ЯОбрамляюСловоКавычками(Парам01)"
//@ЭтаПроцедураБудетНазываться(Парам01)
Процедура ЭтаПроцедураБудетНазываться(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда Я обрамляю переменную угловыми скобками <Тест1>
//@ЯОбрамляюПеременнуюУгловымиСкобками(Тест1)
Процедура ЯОбрамляюПеременнуюУгловымиСкобками(Тест1) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда мне необходимо указать ключевое слово "Примеры" и таблицу значений параметров
//@МнеНеобходимоУказатьКлючевоеСловоИТаблицуЗначенийПараметров(Парам01)
Процедура МнеНеобходимоУказатьКлючевоеСловоИТаблицуЗначенийПараметров(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля