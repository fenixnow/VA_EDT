﻿# language: ru

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Загрузить фичу в vanessa-behavior
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-behavior
 

Сценарий: Возникновение ошибки в ПередНачаломСценария

# Первый шаг не должен выполнится, т.к. должна быть ошибка в процедуре ПередНачаломСценария
	Когда Я уверен что этот шаг не будет выполняться

Сценарий: Продолжение работы после ошибки ПередНачаломСценария
	Когда Возврат в хост систему

