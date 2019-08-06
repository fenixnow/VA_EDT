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

	ДобавитьШагВМассивТестов(ВсеТесты,"СценарийВыполненБезОшибокTemplate()","СценарийВыполненБезОшибокTemplate","Когда Сценарий выполнен без ошибок Template");

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
	ВременныйФайл = ПолучитьИмяВременногоФайла("txt");
	
	ПолноеИмяФайлаОбработки = ВременныйФайл;
	ЗТ = Новый ЗаписьТекста(ПолноеИмяФайлаОбработки,"UTF-8",,Истина); 
	ЗТ.ЗаписатьСтроку(""); 
	ЗТ.Закрыть();
	

	АдресХранилища = "";
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	Выполнить("НачатьПомещениеФайла(Новый ОписаниеОповещения(""НачатьПомещениеФайлаЗавершение"", ЭтаФорма), АдресХранилища, ПолноеИмяФайлаОбработки, Ложь, Новый УникальныйИдентификатор)"); 
КонецПроцедуры

&НаКлиенте
Процедура НачатьПомещениеФайлаЗавершение(Результат, АдресХранилища, ВыбранноеИмяФайла, ДополнительныеПараметры) Экспорт
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры


&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	//Ванесса.ХостСистема.ПродолжитьВыполнениеШагов();
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////



&НаКлиенте
//Когда Сценарий выполнен без ошибок Template
//@СценарийВыполненБезОшибокTemplate()
Процедура СценарийВыполненБезОшибокTemplate() Экспорт
	
КонецПроцедуры

//окончание текста модуля
