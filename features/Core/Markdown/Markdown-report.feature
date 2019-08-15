# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка формирования отчета Markdown

Как разработчик
Я хочу чтобы корректно формировался отчет Markdown
Чтобы я мог видеть результат работы сценариев


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отчета Markdown
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаHTML"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     В открытой форме я изменяю флаг "Создавать Markdown инструкцию"
	И     В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И     в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге Markdown появился 1 файл Markdown
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "я выполняю простой шаг контекста"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст первого шага"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст второго шага Параметр2 и Параметр1"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И этот шаг должен быть проигнориорован в автоинструкции"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004. И я выполняю ещё простой шаг"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004.И я выполняю ещё простой шаг"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе один"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе два"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа шагов один"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов два"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа другой текст"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов три"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов четыре"
