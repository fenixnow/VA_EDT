//начало текста модуля
&НаКлиенте
Перем Ванесса;

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

	ДобавитьШагВМассивТестов(ВсеТесты,"МнеДоступнаРоль(Парам01)","МнеДоступнаРоль","Мне доступна роль ""Админ""");
	ДобавитьШагВМассивТестов(ВсеТесты,"МнеНеДоступнаРоль(Парам01)","МнеНеДоступнаРоль","Мне не доступна роль ""НедоступнаяРоль""");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция РольДоступнаСервер(ИмяРоли)
	Возврат РольДоступна(ИмяРоли);
КонецФункции	

&НаКлиенте
//Мне доступна роль "Админ"
//@МнеДоступнаРоль(Парам01)
Процедура МнеДоступнаРоль(ИмяРоли) Экспорт
	РольДоступна = РольДоступнаСервер(ИмяРоли);
	Ванесса.ПроверитьРавенство(РольДоступна,Истина,"Роль должна быть " + ИмяРоли + " доступна");
КонецПроцедуры

&НаКлиенте
//Мне не доступна роль "НедоступнаяРоль"
//@МнеНеДоступнаРоль(Парам01)
Процедура МнеНеДоступнаРоль(ИмяРоли) Экспорт
	РольДоступна = РольДоступнаСервер(ИмяРоли);
	Ванесса.ПроверитьРавенство(РольДоступна,Ложь,"Роль должна быть " + ИмяРоли + " доступна");
КонецПроцедуры

//окончание текста модуля