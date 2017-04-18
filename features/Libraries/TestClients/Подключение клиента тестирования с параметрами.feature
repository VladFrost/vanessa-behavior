# language: ru

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@TestClient

Функционал: Несколько клиентов тестирования
	Как разработчик
	Хочу иметь возможность подключить клиент тестирования с произвольными параметрами
	Чтобы запускать клиент тестирования с заданными параметрами

Сценарий: Подключение клиента тестирования с параметрами
    # Имя подключения - обязательно к заполнению, остальные колонки заполняются по необходимости 
    # Порт - если порт подключения в момент выполнения шага занят, то будет назначен 1538 или свободный порт из диапазона 48000-65000
    # Строка соединения - задается в формате   Srvr="localhost:1941";Ref="Test";
    # Если перечисленный параметры не заданы, то они заполняются по данным базы запуска VB
    # 
    # Логин, Пароль, Запускаемая обработка, Дополнительные параметры строки запуска - беруться только из параемтров шага
    # Тип клиента - значения Толстый/Тонкий - по умолчанию Тонкий


    # Пример инициализации
    # Когда Я подключаю клиент тестирования с параметрами:
    # | 'Имя подключения' | 'Порт' | 'Строка соединения'                 | 'Логин' | 'Пароль' | 'Запускаемая обработка' |  'Дополнительные параметры строки запуска'  |
    # | 'Test 1'          | '1538' | 'Srvr="localhost:1941";Ref="Test";' | 'Админ' | 'Админ'  | 'c:\СуперОбработка.epf' |  '/UC'                                      |    
	
	Когда Я подключаю клиент тестирования с параметрами:
	| 'Имя подключения' | 'Порт' | 'Строка соединения' | 'Логин' | 'Пароль' | 'Тип клиента' | 'Запускаемая обработка' |  'Дополнительные параметры строки запуска'  |
	| 'Test 1'          | '1538' | ''                  | ''      | ''       | 'Толстый'     |                         |                                             |
	
	И    Я подключаю клиент тестирования с параметрами:
	| 'Имя подключения' | 'Порт' |
	| 'Test 2'          | '1538' |

    И я закрываю TestClient "Test 1"
    И я закрываю TestClient "Test 2"