

Перем ХранимоеЗначение;
Перем ЕдиницаИзмеренияИнициализированная;
Перем ХранимоеЗначениеВБазовойЕдинице;

Процедура ПриСозданииОбъекта(Значение = Неопределено, ЕдиницаИзмерения = Неопределено)
	
	Если Значение = Неопределено Тогда
		ХранимоеЗначение = 1;
	Иначе		
		ХранимоеЗначение = Значение;
	КонецЕсли;	

	Если ЕдиницаИзмерения = Неопределено  Тогда
		ЕдиницаИзмеренияИнициализированная = ЕдиницыИзмерений.Мегабайт;
	Иначе	
		ЕдиницаИзмеренияИнициализированная = ЕдиницаИзмерения;
	КонецЕсли;


	ХранимоеЗначениеВБазовойЕдинице = ХранимоеЗначение * ЕдиницаИзмеренияИнициализированная;

КонецПроцедуры

Функция ПолучитьЗначение() Экспорт
	
	Возврат ХранимоеЗначение;

КонецФункции

Функция ПолучитьЗначениеЕдиницыИзмерения() Экспорт
	
	Возврат ЕдиницаИзмеренияИнициализированная;

КонецФункции

Функция ПолучитьЗначениеЕдиницыИзмеренияВБазовойЕдинице() Экспорт
	
	Возврат ХранимоеЗначениеВБазовойЕдинице;

КонецФункции

Функция ПолучитьЗначениеВБазовойЕдинице() Экспорт
	
	Возврат ХранимоеЗначениеВБазовойЕдинице;

КонецФункции


// <
//
// Параметры:
//  <Параметр1>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//  <Параметр2>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//
// Возвращаемое значение:
//   <Тип.Вид>   - <описание возвращаемого значения>
//
Функция Echo(Текст) Экспорт
	Возврат Текст;
КонецФункции

// <Описание функции>
//
// Параметры:
//  <Параметр1>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//  <Параметр2>  - <Тип.Вид> - <описание параметра>
//                 <продолжение описания параметра>
//
// Возвращаемое значение:
//   <Тип.Вид>   - <описание возвращаемого значения>
//
Функция Сконвертировать(ЕдиницаИзмеренияДляКонвертации, Округление = 6) Экспорт

	Возврат Окр(ХранимоеЗначениеВБазовойЕдинице / ЕдиницаИзмеренияДляКонвертации, Округление, 1);
	
КонецФункции


