&НаКлиенте
Перем Ванесса;

&НаКлиенте
Процедура УстановитьСлужебныеПеременные(КонтекстФреймворка) Экспорт
	Ванесса = КонтекстФреймворка;
КонецПроцедуры 

&НаСервереБезКонтекста
Функция ПолучитьТекстСообщенияПользователюСервер(Текст,ТекстСообщенийПользователю)
	Значение = ТекстСообщенийПользователю[Текст];
	Если ЗначениеЗаполнено(Значение) Тогда
		Возврат Значение;
	КонецЕсли;	 
	
	Возврат Текст; 
КонецФункции

// { Plugin interface
&НаКлиенте
Функция ОписаниеПлагина(ВозможныеТипыПлагинов) Экспорт
	Возврат ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов);
КонецФункции

&НаСервере
Функция ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов)
	Возврат ЭтотОбъектНаСервере().ОписаниеПлагина(ВозможныеТипыПлагинов);
КонецФункции
// } Plugin interface

&НаКлиенте
Функция Что(Знач ПроверяемоеЗначениеПараметр, Знач Сообщение = "") Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Что", 2, ПроверяемоеЗначениеПараметр, Сообщение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Не_() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Не_", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЭтоНе() Экспорт
	Возврат Не_();
КонецФункции

&НаКлиенте
Функция Метод(Знач ИмяМетода, Знач ПараметрыМетода = Неопределено) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Метод", 2, ИмяМетода, ПараметрыМетода);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЭтоИстина() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ЭтоИстина", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЕстьИстина() Экспорт
	Возврат ЭтоИстина();
КонецФункции

&НаКлиенте
Функция ЭтоЛожь() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ЭтоЛожь", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЕстьЛожь() Экспорт
	Возврат ЭтоЛожь();
КонецФункции

&НаКлиенте
Функция Равно(Знач ОжидаемоеЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Равно", 1, ОжидаемоеЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Больше(Знач МеньшееЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Больше", 1, МеньшееЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция БольшеИлиРавно(Знач МеньшееИлиРавноеЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"БольшеИлиРавно", 1, МеньшееИлиРавноеЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Минимум(Знач МинимальноеЗначение) Экспорт
	Возврат БольшеИлиРавно(МинимальноеЗначение);
КонецФункции

&НаКлиенте
Функция МеньшеИлиРавно(Знач БольшееИлиРавноеЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"МеньшеИлиРавно", 1, БольшееИлиРавноеЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Максимум(Знач МаксимальноеЗначение) Экспорт
	Возврат МеньшеИлиРавно(МаксимальноеЗначение);
КонецФункции

&НаКлиенте
Функция Меньше(Знач БольшееЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Меньше", 1, БольшееЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Заполнено() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Заполнено", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Существует() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Существует", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЭтоНеопределено() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ЭтоНеопределено", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЕстьНеопределено() Экспорт
	Возврат ЭтоНеопределено();
КонецФункции

&НаКлиенте
Функция ЭтоNull() Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ЭтоNull", 0);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ЕстьNull() Экспорт
	Возврат ЭтоNull();
КонецФункции

&НаКлиенте
Функция ИмеетТип(Знач ТипИлиИмяТипа) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ИмеетТип", 1, ТипИлиИмяТипа);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Между(Знач НачальноеЗначение, Знач КонечноеЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Между", 2, НачальноеЗначение, КонечноеЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция Содержит(Знач ИскомоеЗначение) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"Содержит", 1, ИскомоеЗначение);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ИмеетДлину(Знач ОжидаемаяДлина) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ИмеетДлину", 1, ОжидаемаяДлина);
	
	Возврат ЭтаФорма;
КонецФункции

&НаКлиенте
Функция ВыбрасываетИсключение(Знач ФрагментИсключения = "") Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("ТекстСообщенийПользователю",Ванесса.ДанныеПереводаСообщенийПользователю());
	ВыполнитьМетодОбъектаНаСервере(ДопПараметры,"ВыбрасываетИсключение", 1, ФрагментИсключения);
	
	Возврат ЭтаФорма;
КонецФункции

// { Helpers
&НаСервере
Процедура ВыполнитьМетодОбъектаНаСервере(ДопПараметры,Знач ИмяМетода, Знач КоличествоПараметров, Знач Параметр1 = Неопределено, Знач Параметр2 = Неопределено)
	ОбъектНаСервере = ЭтотОбъектНаСервере();
	
	СтрокаПараметры = "";
	Если КоличествоПараметров = 1 Тогда
		СтрокаПараметры = "Параметр1";
	ИначеЕсли КоличествоПараметров = 2 Тогда
		СтрокаПараметры = "Параметр1, Параметр2";
	КонецЕсли;
	
	Попытка
		Выполнить("ОбъектНаСервере." + ИмяМетода + "(" + СтрокаПараметры + ")");
	Исключение
		ОписаниеОшибки = ОписаниеОшибки();
		ТекстСообщения = ПолучитьТекстСообщенияПользователюСервер("Вызов метода <%1>: %2",ДопПараметры.ТекстСообщенийПользователю);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяМетода);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ОписаниеОшибки);
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
	
	ЗначениеВРеквизитФормы(ОбъектНаСервере, "Объект");
КонецПроцедуры

&НаСервере
Функция ЭтотОбъектНаСервере()
	Возврат РеквизитФормыВЗначение("Объект");
КонецФункции
// } Helpers
