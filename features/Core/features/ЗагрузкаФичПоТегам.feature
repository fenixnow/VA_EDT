﻿# language: ru

@IgnoreOnWeb

Функционал: Частичная загрузка фич по тегам
	Как Разработчик
	Я Хочу чтобы была возможность указать список тегов фич для загрузки и список тегов фич для пропуска
 
#Сценарии по тегам исключение   

	Сценарий: Не загрузка фичи из-за фильтра по тегам, когда я загружаю фичи из каталога
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "IgnoreOnCIMainBuild" в список тегов исключений
		И Я загрузил фичи из служебного каталога "Support\Templates\features"
		И Пауза 1
		И в дереве фич нет фичи загруженной из файла "ОсновнаяТестоваяФича"

	Сценарий: Не загрузка фичи из-за фильтра по тегам, когда я загружаю фичи из каталога, тег не совпадает по регистру букв
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "IgnoreOnCIMainBUILD" в список тегов исключений
		И Я загрузил фичи из служебного каталога "Support\Templates\features"
		И Пауза 1
		И в дереве фич нет фичи загруженной из файла "ОсновнаяТестоваяФича"

	Сценарий: Загрузка фичи несмотря на фильтр по тегам исключениям, т.к. она указана явно
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "IgnoreOnCIMainBuild" в список тегов исключений
		Когда Я загрузил специальную тестовую фичу "ОсновнаяТестоваяФича"
		И Пауза 1
		Тогда ДеревоТестов заполнилось строками из фичи

	Сценарий: Загрузка фичи несмотря на фильтр по тегам исключениям, т.к. она указана явно, тег не совпадает по регистру букв
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "IgnoreOnCIMainBUILD" в список тегов исключений
		Когда Я загрузил специальную тестовую фичу "ОсновнаяТестоваяФича"
		И Пауза 1
		Тогда ДеревоТестов заполнилось строками из фичи
		
#Сценарии по тегам фильтрам	
		
	Сценарий: Загрузка фичи по фильтру по тегам, когда я загружаю фичи из каталога
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "SpecialTag" в список тегов фильтров
		И Я загрузил фичи из служебного каталога "Support\Templates\features"
		И Пауза 1
		И в дереве фич есть фича загруженная из файла "ОсновнаяТестоваяФича"
		И в дереве фич нет фичи загруженной из файла "ФичаДляПроверкиГенерацииEPF"
	
	Сценарий: Загрузка фичи по фильтру по тегам, когда я загружаю фичи из каталога, тег не совпадает по регистру букв
		Когда я открыл форму VanessaBehavoir в режиме самотестирования
		И Я добавил тег "SpecialTAG" в список тегов фильтров
		И Я загрузил фичи из служебного каталога "Support\Templates\features"
		И Пауза 1
		И в дереве фич есть фича загруженная из файла "ОсновнаяТестоваяФича"
		И в дереве фич нет фичи загруженной из файла "ФичаДляПроверкиГенерацииEPF"
		
#Устаревшее	
#	Сценарий: Загрузка фичи несмотря на фильтр по тегам фильтрам, т.к. она указана явно
#		Когда я открыл форму VanessaBehavoir в режиме самотестирования
#		И Я добавил тег "SpecialTag" в список тегов фильтров
#		Когда Я загрузил специальную тестовую фичу "ФичаДляПроверкиГенерацииEPF"
#		И Пауза 1
#		Тогда ДеревоТестов заполнилось строками из фичи
#	
#	Сценарий: Загрузка фичи несмотря на фильтр по тегам фильтрам, т.к. она указана явно, тег не совпадает по регистру букв
#		Когда я открыл форму VanessaBehavoir в режиме самотестирования
#		И Я добавил тег "SpecialTAG" в список тегов фильтров
#		Когда Я загрузил специальную тестовую фичу "ФичаДляПроверкиГенерацииEPF"
#		И Пауза 1
#		Тогда ДеревоТестов заполнилось строками из фичи