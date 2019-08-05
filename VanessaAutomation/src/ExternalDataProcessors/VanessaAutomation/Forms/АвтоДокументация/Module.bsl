&НаКлиенте
Перем Ванесса;

#Область ЭкспортныеПроцедурыИФункции

&НаКлиенте
Процедура УстановитьСлужебныеПеременные(СтруктураПараметров) Экспорт
	Ванесса = СтруктураПараметров.Ванесса;
КонецПроцедуры 

#КонецОбласти

&НаКлиенте
Функция CSSСтили() Экспорт

	Cтили = Новый ТекстовыйДокумент();
	Cтили.ДобавитьСтроку("<style>");

	// Alert
	СтрокаСтиля(".alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}", Cтили);
	СтрокаСтиля(".alert-primary{color:#004085;background-color:#cce5ff;border-color:#b8daff}", Cтили);
	СтрокаСтиля(".alert-secondary{color:#383d41;background-color:#e2e3e5;border-color:#d6d8db}", Cтили);
	СтрокаСтиля(".alert-success{color:#155724;background-color:#d4edda;border-color:#c3e6cb}", Cтили);
	СтрокаСтиля(".alert-info{color:#0c5460;background-color:#d1ecf1;border-color:#bee5eb}", Cтили);
	СтрокаСтиля(".alert-warning{color:#856404;background-color:#fff3cd;border-color:#ffeeba}", Cтили);
	СтрокаСтиля(".alert-danger{color:#721c24;background-color:#f8d7da;border-color:#f5c6cb}", Cтили);
	СтрокаСтиля(".alert-light{color:#818182;background-color:#fefefe;border-color:#fdfdfe}", Cтили);
	СтрокаСтиля(".alert-dark{color:#1b1e21;background-color:#d6d8d9;border-color:#c6c8ca}", Cтили);

//	СтрокаСтиля(".alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}", Cтили);
//	СтрокаСтиля(".alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}", Cтили);
//	СтрокаСтиля(".alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:.25rem}", Cтили);

	Cтили.ДобавитьСтроку("</style>");

	Возврат Cтили.ПолучитьТекст();

КонецФункции

&НаКлиенте
Процедура СтрокаСтиля(Стиль, Стили)

	Стили.ДобавитьСтроку(Стиль);
	
КонецПроцедуры

