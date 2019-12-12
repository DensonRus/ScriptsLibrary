#Использовать asserts

#Использовать ".."

 

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт

    ВсеТесты = Новый Массив;    
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВыбросИсключенияПриСохраненииСтроки");
    Возврат ВсеТесты;
КонецФункции

 

Процедура ПередЗапускомТеста() Экспорт

КонецПроцедуры

 

Процедура ПослеЗапускаТеста() Экспорт

КонецПроцедуры

Процедура ТестДолжен_ПроверитьВыбросИсключенияПриСохраненииСтроки() Экспорт

    

    Попытка

        ЧислоВПамяти = Новый ЧислоВПамяти("Строка");

        ВызватьИсключение "Должен был произойти вызов исключения!";    

    Исключение

        Ожидаем.Что(

            ОписаниеОшибки(),

            "Описание ошибки содержит информацию о неверном аргументе"

        ).Содержит("Передан аргумент неверного типа");

    КонецПопытки;

    

КонецПроцедуры