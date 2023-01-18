rem когда нужно создать локального администратора в домене а прав на это нет, но есть права на редактирование групповой политики, сохраняем данный скрипт с нужными нам параметрами и добавляем в логон-скрипты политики
chcp 65001
rem задаем кодировку
net user Admin P@$$w0rd /add
rem Создаем пользователя Admin с паролем P@$$w0rd
net user Admin /Passwordchg:No
rem Задаем запрет на смену пользователем пароля
wmic useraccount where "name='Admin' " set passwordexpires=false
rem ставим галочку "Срок действия пароля не ограничен"
net localgroup Администраторы Admin /add
rem добавляем пользователя Admin в группу Администраторы
echo %date% %time% >> \\Share\%computername%.txt
rem создаем на шаре лог с компа
net user "AnswerPro" >> \\Share\%computername%.txt
rem записываем в лог вывод о созданной нами учетной записи
