# language: ru
Функционал: Списки
"""
%suite Списки
"""

  Контекст:
    Допустим выбран аккаунт "9365"
    Также открыт Автообзвон

  @grid_node1
  @functional
  Сценарий:  Должен добавиться новый список контактов посредством буфера обмена
    Если добавить новый список контактов посредством буфера обмена

      | index | sub-step                                               | arg_name  | arg_value               |
      | 0     | -> кликнуть по Спискам в сайдбаре                      |           |                         |
      | 1     | -> кликнуть по кнопке Создать список                   |           |                         |
      | 2     | -> ввести название списка                              | название  | TEST_CLIPBOARD_LIST     |
      | 3     | -> кликнуть по табу Буфер обмена                       |           |                         |
      | 4     | -> вставить список телефонов                           |           |                         |
      | 5     | -> ввести комментарий                                  | коммент   | Список из буфера обмена |
      | 6     | -> кликнуть Сохранить                                  |           |                         |

    Тогда должен отобразиться новый список контактов загруженный через буфер обмена

      | index | sub-step                                                     | arg_name  | arg_value                 |
      | 0     | -> убедиться, что новый список контактов отобразился         | название  | TEST_CLIPBOARD_LIST       |
      | 1     | -> убедиться, что отобразилось количество контактов в списке | кол-во    | 3                         |
      | 2     | -> убедиться, что комментарий к списку отобразился           | коммент   | Список из буфера обмена   |
      | 3     | -> кликнуть на тестовый список контактов                     | список    | TEST_CLIPBOARD_LIST       |
      | 4     | -> убедиться, что отобразился тестовый номер телефона 1      | телефон   | 79055974736               |
      | 5     | -> убедиться, что отобразился тестовый номер телефона 2      | телефон   | 79524893789               |
      | 6     | -> убедиться, что отобразился тестовый номер телефона 3      | телефон   | 79274457313               |
      | 7     | -> убедиться, что отобразилась страна                        | страна    | Россия                    |
      | 8     | -> убедиться, что отобразился оператор 1                     | оператор  | ПАО "Вымпел-Коммуникации" |
      | 9     | -> убедиться, что отобразился оператор 2                     | оператор  | ПАО "МегаФон"             |
      | 10    | -> убедиться, что отобразился оператор 3                     | оператор  | ООО "Т2 Мобайл"           |
      | 11    | -> убедиться, что отобразился тип номера                     | тип       | Mobile                    |
      | 12    | -> убедиться, что отобразился регион 1                       | регион    | Москва и Московская обл.  |
      | 13    | -> убедиться, что отобразился регион 2                       | регион    | Татарстан                 |
      | 14    | -> убедиться, что отобразился регион 3                       | регион    | Новгородская обл.         |
      | 15    | -> убедиться, что отобразился город 1                        | город     | Москва и Московская обл.  |
      | 16    | -> убедиться, что отобразился город 2                        | город     | Республика Татарстан      |
      | 17    | -> убедиться, что отобразился город 3                        | город     | Новгородская обл.         |

  @grid_node1
  @functional
  Сценарий:  Должен добавиться новый список контактов посредством загрузки csv файла
    Если добавить новый список контактов посредством загрузки csv файла

      | index | sub-step                                           | arg_name  | arg_value           |
      | 0     | -> кликнуть по Спискам в сайдбаре                  |           |                     |
      | 1     | -> кликнуть по кнопке Создать список               |           |                     |
      | 2     | -> ввести название списка                          | название  | TEST_CSV_LIST       |
      | 3     | -> кликнуть по табу Из файла                       |           |                     |
      | 4     | -> загрузить тестовый csv файл                     | файл      | test-list.csv       |
      | 5     | -> ввести комментарий                              | коммент   | Список из csv файла |
      | 6     | -> кликнуть Сохранить                              |           |                     |
      | 7     | -> выбрать Разделитель                             | раздел    | Запятая (",")       |
      | 8     | -> актив. чекбокс Форматировать номера телефонов   |           |                     |
      | 9     | -> выбрать Колонку                                 | колонка   | Телефон             |
      | 10    | -> кликнуть Загрузить                              |           |                     |

    Тогда должен отобразиться новый список контактов загруженный через csv файл

      | index | sub-step                                                     | arg_name  | arg_value                               |
      | 0     | -> убедиться, что новый список контактов отобразился         | название  | TEST_CSV_LIST                           |
      | 1     | -> убедиться, что отобразилось количество контактов в списке | кол-во    | 16                                      |
      | 2     | -> убедиться, что комментарий к списку отобразился           | коммент   | Список из csv файла                     |
      | 3     | -> кликнуть на тестовый список контактов                     | список    | TEST_CSV_LIST                           |
      | 4     | -> убедиться, что отобразился телефон 1                      | телефон   | 77777777777                             |
      | 5     | -> убедиться, что отобразился телефон 2                      | телефон   | 7790322                                 |
      | 6     | -> убедиться, что отобразился телефон 3                      | телефон   | 9055974736                              |
      | 7     | -> убедиться, что отобразился телефон 4                      | телефон   | 79066405266                             |
      | 8     | -> убедиться, что отобразился телефон 5                      | телефон   | 79109155712                             |
      | 9     | -> убедиться, что отобразился телефон 6                      | телефон   | 79123456789                             |
      | 10    | -> убедиться, что отобразился телефон 7                      | телефон   | 79217733168                             |
      | 11    | -> убедиться, что отобразился телефон 8                      | телефон   | 79231237887                             |
      | 12    | -> убедиться, что отобразился телефон 9                      | телефон   | 79257845550                             |
      | 13    | -> убедиться, что отобразился телефон 10                     | телефон   | 79274457313                             |
      | 14    | -> убедиться, что отобразилась страна 1                      | страна    | Россия                                  |
      | 15    | -> убедиться, что отобразилась страна 2                      | страна    | Казахстан                               |
      | 16    | -> убедиться, что отобразился оператор 1                     | оператор  | ПАО "Вымпел-Коммуникации"               |
      | 17    | -> убедиться, что отобразился оператор 2                     | оператор  | ПАО "Мобильные ТелеСистемы"             |
      | 18    | -> убедиться, что отобразился оператор 3                     | оператор  | ПАО "МегаФон"                           |
      | 19    | -> убедиться, что отобразился оператор 4                     | оператор  | KaR-Tel (Beeline)                       |
      | 20    | -> убедиться, что отобразился тип номера                     | тип       | Mobile                                  |
      | 21    | -> убедиться, что отобразился регион 1                       | регион    | Москва и Московская обл.                |
      | 22    | -> убедиться, что отобразился регион 2                       | регион    | Калужская обл.                          |
      | 23    | -> убедиться, что отобразился регион 3                       | регион    | Санкт-Петербург и Ленинградская обл.    |
      | 24    | -> убедиться, что отобразился регион 4                       | регион    | Оренбургская обл.                       |
      | 25    | -> убедиться, что отобразился регион 5                       | регион    | Татарстан                               |
      | 26    | -> убедиться, что отобразился регион 6                       | регион    | Новосибирская обл.                      |
      | 27    | -> убедиться, что отобразился город 1                        | город     | Москва и Московская область             |
      | 28    | -> убедиться, что отобразился город 2                        | город     | Калужская обл.                          |
      | 29    | -> убедиться, что отобразился город 3                        | город     | Санкт-Петербург и Ленинградская область |
      | 30    | -> убедиться, что отобразился город 4                        | город     | Оренбургская обл.                       |
      | 31    | -> убедиться, что отобразился город 5                        | город     | Республика Татарстан                    |
      | 32    | -> убедиться, что отобразился город 6                        | город     | Новосибирская обл.                      |
      | 33    | -> кликнуть на Страницу 2 пагинации                          |           |                                         |
      | 34    | -> убедиться, что отобразился телефон 1                      | телефон   | 79524893789                             |
      | 35    | -> убедиться, что отобразился телефон 2                      | телефон   | 79637829088                             |
      | 36    | -> убедиться, что отобразился телефон 3                      | телефон   | 79684585615                             |
      | 37    | -> убедиться, что отобразился телефон 4                      | телефон   | 79737829011                             |
      | 38    | -> убедиться, что отобразился телефон 5                      | телефон   | 79778979314                             |
      | 39    | -> убедиться, что отобразилась страна                        | страна    | Россия                                  |
      | 40    | -> убедиться, что отобразился оператор 1                     | оператор  | ООО "Т2 Мобайл"                         |
      | 41    | -> убедиться, что отобразился оператор 2                     | оператор  | ПАО "Вымпел-Коммуникации"               |
      | 42    | -> убедиться, что отобразился тип номера                     | тип       | Mobile                                  |
      | 43    | -> убедиться, что отобразился регион 1                       | регион    | Новгородская обл.                       |
      | 44    | -> убедиться, что отобразился регион 2                       | регион    | Москва и Московская обл.                |
      | 45    | -> убедиться, что отобразился город 1                        | город     | Новгородская обл.                       |
      | 46    | -> убедиться, что отобразился город 2                        | город     | Москва и Московская область             |


  @grid_node1
  @functional
  Сценарий:  Должен добавиться новый список контактов посредством ручного ввода
    Если добавить новый список контактов посредством ручного ввода

      | index | sub-step                                        | arg_name  | arg_value               |
      | 0     | -> кликнуть по Спискам в сайдбаре               |           |                         |
      | 1     | -> кликнуть по кнопке Создать список            |           |                         |
      | 2     | -> ввести название списка                       | название  | TEST_MANUAL_INPUT_LIST  |
      | 3     | -> кликнуть по табу Ручной ввод                 |           |                         |
      | 4     | -> ввести тестовое ФИО 1                        | имя       | Иван                    |
      | 5     | -> ввести тестовый номер телефона 1             | телефон   | 79055974736             |
      | 6     | -> ввести тестовый email 1                      | email     | test1@mcn.ru            |
      | 7     | -> выбрать пол 1                                | пол       | Мужской                 |
      | 8     | -> ввести дату рождения 1                       | дата      | 01.01.1970              |
      | 9     | -> кликнуть на Добавить                         |           |                         |
      | 10    | -> ввести тестовое ФИО 2                        | имя       | Елена                   |
      | 11    | -> ввести тестовый номер телефона 2             | телефон   | 79109155712             |
      | 12    | -> ввести тестовый email 2                      | email     | test2@mcn.ru            |
      | 13    | -> выбрать пол 2                                | пол       | Женский                 |
      | 14    | -> ввести дату рождения 2                       | дата      | 12.12.1999              |
      | 15    | -> кликнуть на Добавить                         |           |                         |
      | 16    | -> ввести комментарий                           | коммент   | Список ручного ввода    |
      | 17    | -> кликнуть Сохранить                           |           |                         |

    Тогда должен отобразиться новый список контактов загруженный через ручной ввод

      | index | sub-step                                                     | arg_name  | arg_value                   |
      | 0     | -> убедиться, что новый список контактов отобразился         | название  | TEST_MANUAL_INPUT_LIST      |
      | 1     | -> убедиться, что отобразилось количество контактов в списке | кол-во    | 2                           |
      | 2     | -> убедиться, что комментарий к списку отобразился           | коммент   | Список ручного ввода        |
      | 3     | -> кликнуть на тестовый список контактов                     | список    | TEST_MANUAL_INPUT_LIST      |
      | 4     | -> убедиться, что отобразился тестовый номер телефона 1      | телефон   | 79055974736                 |
      | 5     | -> убедиться, что отобразился тестовый номер телефона 2      | телефон   | 79109155712                 |
      | 6     | -> убедиться, что отобразилась страна                        | страна    | Россия                      |
      | 7     | -> убедиться, что отобразился оператор 1                     | оператор  | ПАО "Вымпел-Коммуникации"   |
      | 8     | -> убедиться, что отобразился оператор 2                     | оператор  | ПАО "Мобильные ТелеСистемы" |
      | 9     | -> убедиться, что отобразился тип номера                     | тип       | Mobile                      |
      | 10    | -> убедиться, что отобразился регион                         | регион    | Москва и Московская обл.    |
      | 11    | -> убедиться, что отобразился город                          | город     | Москва и Московская обл.    |


  @grid_node1
  @functional
  Сценарий:  Должен удалиться тестовый список контактов
    Если удалить тестовый список контактов

      | index | sub-step                                         | arg_name  | arg_value      |
      | 0     | -> кликнуть по Спискам в сайдбаре                |           |                |
      | 1     | -> актив. чекбокс у тестового списка контактов   | список    | TEST_DEL_LIST  |
      | 2     | -> кликнуть по кнопке Удалить                    |           |                |

    Тогда не должен отобразиться тестовый список контактов

      | index | sub-step                                                    | arg_name  | arg_value      |               
      | 0     | -> убедиться, что не отобразился тестовый список контактов  | задание   | TEST_DEL_LIST  |


  @grid_node1
  @functional
  Сценарий:  Должен находиться тестовый список контактов
    Если искать тестовый список контактов

      | index | sub-step                             | arg_name  | arg_value                |
      | 0     | -> кликнуть по Спискам в сайдбаре    |           |                          |
      | 1     | -> ввести слово для поиска списка    | слово     | TEST                     |
      | 2     | -> ввести дату для поиска списка     | дата      | 20.05.2020 - 21.05.2020  |  
      | 3     | -> кликнуть по Сохранить              |          |                          |

    Тогда должно отобразиться найденное тестовое транзакционное задание

      | index | sub-step                                                            | arg_name  | arg_value      |               
      | 0     | -> убедиться, что отобразился необходимый тестовый список контактов | задание   | TEST_EDIT_LIST |
      | 1     | -> убедиться, что не отобразился дополнительный тестовый список     | задание   | TEST_DEL_LIST  |


  @grid_node1
  @functional
  Сценарий:  Должен редактироваться тестовый список контактов
    Если редактировать тестовый список контактов

      | index | sub-step                                            | arg_name  | arg_value                 |
      | 0     | -> кликнуть по Спискам в сайдбаре                   |           |                           |
      | 1     | -> кликнуть по кнопке Создать список                |           |                           |
      | 2     | -> ввести название списка                           | название  | TEST_ME_LIST              |
      | 3     | -> кликнуть по табу Из файла                        |           |                           |
      | 4     | -> загрузить тестовый csv файл                      | файл      | test-list.csv             |
      | 5     | -> ввести комментарий                               | коммент   | Список для редактирования |
      | 6     | -> кликнуть Сохранить                               |           |                           |
      | 7     | -> выбрать Разделитель                              | раздел    | Запятая (",")             |
      | 8     | -> актив. чекбокс Форматировать номера телефонов    |           |                           |
      | 9     | -> выбрать Колонку                                  | колонка   | Телефон                   |
      | 10    | -> кликнуть Загрузить                               |           |                           |
      | 11    | -> кликнуть по тестовому списку                     | название  | TEST_ME_LIST              |
      | 12    | -> выбрать 25 строк на странице в пагинации         | кол-во    | 25                        |    
      | 13    | -> удалить дубликат                                 | номер     | 79217733168               |
      | 14    | -> удалить тестовый номер для удаления 1            | номер     | 123456789123456789        |
      | 15    | -> удалить тестовый номер для удаления 2            | номер     | 790322                    |
      | 16    | -> кликнуть по кнопке Добавить                      |           |                           |
      | 17    | -> ввести новый тестовый номер телефона             | номер     | 79587980005               |
      | 18    | -> кликнуть по тестовому номеру 1 для редактирования| номер     | 89637829088               |
      | 19    | -> редактировать тестовый номер 1                   | номер     | 79637829088               |
      | 20    | -> кликнуть по тестовому номеру 2                   | номер     | 7925777777777777          |
      | 21    | -> редактировать тестовый номер 2                   | номер     | 79257777777               |
      | 22    | -> кликнуть по тестовому номеру 3                   | номер     | 89778979314               |
      | 23    | -> редактировать тестовый номер 3                   | номер     | 79778979314               |
      | 24    | -> кликнуть по тестовому номеру 4                   | номер     | 89055974736               |
      | 25    | -> редактировать тестовый номер 4                   | номер     | 79055974736               |
      | 27    | -> кликнуть по тестовому номеру 5                   | номер     | 89231237887               |
      | 28    | -> редактировать тестовый номер 5                   | номер     | 79231237887               |
      | 29    | -> кликнуть по тестовому номеру 6                   | номер     | 89257845550               |
      | 30    | -> редактировать тестовый номер 6                   | номер     | 79257845550               |
      | 31    | -> кликнуть по тестовому номеру 7                   | номер     | 89524893789               |
      | 32    | -> редактировать тестовый номер 7                   | номер     | 79524893789               |
      | 33    | -> кликнуть по тестовому номеру 8                   | номер     | 9109155712                |
      | 34    | -> редактировать тестовый номер 8                   | номер     | 79109155712               |
      | 35    | -> кликнуть по тестовому номеру 9                   | номер     | 9684585615                |
      | 36    | -> редактировать тестовый номер 9                   | номер     | 79684585615               |
      | 37    | -> кликнуть по тестовому номеру 10                  | номер     | 9737829011                |
      | 38    | -> редактировать тестовый номер 10                  | номер     | 79737829011               |


    Тогда должен отобразиться отредактированный тестовый список контактов

      | index | sub-step                                                         | arg_name  | arg_value                 |
      | 0     | -> убедиться, что отобразился тестовый номер 1                   | номер     | 79217733168               |
      | 1     | -> убедиться, что отобразился тестовый номер 2                   | номер     | 79737829011               |
      | 2     | -> убедиться, что отобразился тестовый номер 3                   | номер     | 79055974736               |
      | 3     | -> убедиться, что отобразился тестовый номер 4                   | номер     | 79066405266               |
      | 4     | -> убедиться, что отобразился тестовый номер 5                   | номер     | 79109155712               |
      | 5     | -> убедиться, что отобразился тестовый номер 6                   | номер     | 79231237887               |
      | 6     | -> убедиться, что отобразился тестовый номер 7                   | номер     | 79257777777               |
      | 7     | -> убедиться, что отобразился тестовый номер 8                   | номер     | 79257845550               |
      | 8     | -> убедиться, что отобразился тестовый номер 9                   | номер     | 79274457313               |
      | 9     | -> убедиться, что отобразился тестовый номер 10                  | номер     | 79524893789               |
      | 10    | -> убедиться, что отобразился тестовый номер 11                  | номер     | 79587980005               |
      | 11    | -> убедиться, что отобразился тестовый номер 12                  | номер     | 79637829088               |
      | 12    | -> убедиться, что отобразился тестовый номер 13                  | номер     | 79684585615               |
      | 13    | -> убедиться, что отобразился тестовый номер 14                  | номер     | 79778979314               |
      | 14    | -> убедиться, что не отобразился номер для удаления 1            | номер     | 123456789123456789        |
      | 15    | -> убедиться, что не отобразился номер для удаления 2            | номер     | 790322                    |
      | 16    | -> кликнуть по Спискам в сайдбаре                                |           |                           |
      | 17    | -> убедиться, что отредактированный список контактов отобразился | название  | TEST_ME_LIST              |
      | 18    | -> убедиться, что отобразилось количество контактов в списке     | кол-во    | 14                        |
      | 19    | -> убедиться, что комментарий к списку отобразился               | коммент   | Список для редактирования |