#Использовать slack

URLВебхука = "https://hooks.slack.com/services/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";

Отправитель = Новый ОтправительSlack(URLВебхука);

Сообщение = Новый СообщениеSlack("Тестовое сообщение");

Отправитель.Отправить(Сообщение);