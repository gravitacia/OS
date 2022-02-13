# OS

#Somelabs
Ниже предоставлено переччесление всех ключей используемых в Bash


#keys:
Шаблон выбора и его интерпретация:
-E, —extended-regexp ШАБЛОН — расширенное регулярное выражение
-F, —fixed-regexp ШАБЛОН — строки, разделённые символом новой строки
-G, —basic-regexp ШАБЛОН — простое регулярное выражение (по умолчанию)
-P, —perl-regexp ШАБЛОН — регулярное выражения языка Perl
-e, —regexp=ШАБЛОН использовать ШАБЛОН для поиска
-f, —file=ФАЙЛ брать ШАБЛОН из ФАЙЛа
-i, —ignore-case игнорировать различие регистра
-w, —word-regexp ШАБЛОН должен подходить ко всем словам
-x, —line-regexp ШАБЛОН должен подходить ко всей строке
-z, —null-data строки разделяются байтом с нулевым значением, а не
символом конца строки

Разное:
-s, —no-messages не показывать сообщения об ошибках
-v, —invert-match выбирать не подходящие строки
-V, —version показать информацию о версии и закончить работу
—help показать эту справку и закончить работу

Управление выводом:
-m, —max-count=ЧИСЛО остановиться после указанного
ЧИСЛА выбранных строк
-b, —byte-offset печатать вместе с выходными строками смещение в
байтах
-n, —line-number печатать номер строки вместе с выходными строками
—line-buffered сбрасывать буфер после каждой строки
-H, —with-filename печатать имя файла для каждой выводимой строки
-h, —no-filename не начинать вывод с имени файла
—label=МЕТКА использовать МЕТКУ в качестве имени файла для
стандартного ввода
-o, —only-matching показывать только часть строки, совпадающей с ШАБЛОНОМ
-q, —quiet, —silent подавлять весь обычный вывод
—binary-files=ТИП считать, что двоичный файл имеет ТИП:
«binary», «text» или «without-match».
-a, —text то же что и —binary-files=text
-I то же, что и —binary-files=without-match
-d, —directories=ДЕЙСТВ как обрабатывать каталоги
ДЕЙСТВИЕ может быть «read» (читать),
«recurse» (рекурсивно) или «skip» (пропускать).
-D, —devices=ДЕЙСТВ как обрабатывать устройства, FIFO и сокеты
ДЕЙСТВИЕ может быть «read» или «skip»
-r, —recursive то же, что и —directories=recurse
-R, —dereference-recursive тоже, но с переходом по всем символьным ссылкам
—include=Ф_ШАБЛОН обработать только файлы, подпадающие под Ф_ШАБЛОН
—exclude=Ф_ШАБЛОН пропустить файлы и каталоги,
подпадающие под Ф_ШАБЛОН
—exclude-from=ФАЙЛ пропустить файлы, подпадающие под шаблон
файлов из ФАЙЛА
—exclude-dir=ШАБЛОН каталоги, подпадающие под ШАБЛОН,
будут пропущены
-L, —files-without-match печатать только имена ФАЙЛОВ без выбранных строк
-l, —files-with-matches печатать только имена ФАЙЛОВ с выбранными строками
-c, —count печатать только количество выбранных
строк на ФАЙЛ
-T, —initial-tab выравнивать табуляцией (если нужно)
-Z, —null печатать байт 0 после имени ФАЙЛА

Управление контекстом:
-B, —before-context=ЧИС печатать ЧИСЛО строк предшествующего контекста
-A, —after-context=ЧИС печатать ЧИСЛО строк последующего контекста
-C, —context[=ЧИС] печатать ЧИСЛО строк контекста
-ЧИСЛО то же, что и —context=ЧИСЛО
—color[=КОГДА],
—colour[=КОГДА] использовать маркеры для различия совпадающих
строк; КОГДА может быть «always» (всегда),
«never» (никогда) или «auto» (автоматически)
-U, —binary не удалять символы CR в конце строки
(MSDOS/Windows)

Если в качестве ФАЙЛА указан символ «-», то читается стандартный ввод.
Если ФАЙЛ не указан и задан параметр командной строки -r, то читается
текущий каталог «.» и «-» в противном случае. Если указано менее двух
ФАЙЛОВ, то предполагается -h. При нахождении совпадений любой строки,
кодом завершения программы будет 0, и 1, если ничего не совпало.
При возникновении ошибок и если не указан параметр -q, кодом
завершения будет 2.тфтщ ефыл
