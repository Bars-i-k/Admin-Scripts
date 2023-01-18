chcp 65001
net user Admin P@$$w0rd /add
net user Admin /Passwordchg:No
wmic useraccount where "name='AnswerPro' " set passwordexpires=false
net localgroup Администраторы AnswerPro /add
echo %date% %time% >> \\Share\%computername%.txt
net user "AnswerPro" >> \\Share\%computername%.txt
