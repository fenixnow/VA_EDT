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

//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()","ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования","я открыл форму VanessaBehavoir в режиме самотестирования"); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)","ЯЗагрузилСпециальнуюТестовуюФичу","я загрузил специальную тестовую фичу ""ПростаяФичаДляПроверкиРаботыВыполненияСценария"""); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПрервалВыполнениеШаговВХостСистемеИЯНажалНаКнопку(Парам01Строка)","ЯПрервалВыполнениеШаговВХостСистемеИЯНажалНаКнопку","я прервал выполнение шагов в хост системе и я нажал на кнопку ""ВыполнитьСценарии""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреВыполнилсяСценарий()","ВТестируемомЭкземпляреВыполнилсяСценарий","в тестируемом экземпляре выполнился сценарий");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПродолжилВыполнениеШаговВХостСистеме()","ЯПродолжилВыполнениеШаговВХостСистеме","Я продолжил выполнение шагов в хост системе");

	Возврат ВсеТесты;
КонецФункции

Процедура ПередНачаломСценария() Экспорт
	//подложим специальную epf, как будто она уже была там
	ПутьКудаПоложитьEPF = Ванесса.КаталогИнструментов + "\features\Support\Templates\ПростаяФичаДляПроверкиРаботыВыполненияСценария.epf";
	ФайлПроверкаСуществования = Новый Файл(ПутьКудаПоложитьEPF);
	Контекст.Вставить("ПутьКудаПоложитьEPF",ПутьКудаПоложитьEPF);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ПутьКудаПоложитьEPF);
	КонецЕсли;	 
	
	ФайлПуть = Новый Файл(ФайлПроверкаСуществования.Путь);
	Если Не ФайлПуть.Существует() Тогда
		СоздатьКаталог(ФайлПуть.ПолноеИмя);
	КонецЕсли;	 
	
	Макет = ПолучитьМакет("Макет");
	Макет.Записать(ПутьКудаПоложитьEPF);
КонецПроцедуры

Процедура ПередОкончаниемСценария() Экспорт
	УдалитьФайлы(Контекст.ПутьКудаПоложитьEPF);
	
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры


////я открыл форму VanessaBehavoir в режиме самотестирования
////@ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()
//Процедура ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования() Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

////я загрузил специальную тестовую фичу "ПростаяФичаДляПроверкиРаботыВыполненияСценария"
////@ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)
//Процедура ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка) Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//я прервал выполнение шагов в хост системе и я нажал на кнопку "ВыполнитьСценарии"
//@ЯПрервалВыполнениеШаговВХостСистемеИЯНажалНаКнопку(Парам01Строка)
Процедура ЯПрервалВыполнениеШаговВХостСистемеИЯНажалНаКнопку(ИмяКнопки) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.ВыполнитьСценарии();
	
КонецПроцедуры

Процедура ПроверитьЧтоШагВыполнился(ДеревоСтроки,БылУспешныйШаг)
	Для каждого СтрокаДерева Из ДеревоСтроки Цикл
		Если СтрокаДерева.Тип = "Шаг" Тогда
			Если СтрокаДерева.Статус = "Success" Тогда
				БылУспешныйШаг = Истина;
			КонецЕсли;	 
		Иначе
			ПроверитьЧтоШагВыполнился(СтрокаДерева.Строки,БылУспешныйШаг);
		КонецЕсли;	 
	КонецЦикла;
	
	Ванесса.ПроверитьРавенство(БылУспешныйШаг,Истина,"Был хотя бы один успешный шаг.");
КонецПроцедуры

//в тестируемом экземпляре выполнился сценарий
//@ВТестируемомЭкземпляреВыполнилсяСценарий()
Процедура ВТестируемомЭкземпляреВыполнилсяСценарий() Экспорт
	//ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	
	//это ссылка на первый шаг
	БылУспешныйШаг = Ложь;
	ПроверитьЧтоШагВыполнился(Контекст.ОбработкаОбъектVanessaBehavoir.ДеревоТестов.Строки,БылУспешныйШаг);
	//Ванесса.ПроверитьРавенство(Ванесса.ДеревоТестов.Строки[0].Строки[0].Строки[0].Строки[0].Статус,"Success","Шаг выполнился");
КонецПроцедуры

//Я продолжил выполнение шагов в хост системе
//@ЯПродолжилВыполнениеШаговВХостСистеме()
Процедура ЯПродолжилВыполнениеШаговВХостСистеме() Экспорт
	
КонецПроцедуры

