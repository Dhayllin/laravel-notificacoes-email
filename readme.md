# Exemplo de envio de notificação com Laravel


## Gmail

Caso o host do e-mail seja o GMAIL, alterar as configurações do seu .env para
```
MAIL_DRIVER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=minhaconta@gmail.com
MAIL_PASSWORD=senhaminhaconta
MAIL_ENCRYPTION=tls
```
É necessário também habilitar a opção na sua conta de e-mail para "Permitir aplicativos menos seguros" neste link  [Google](https://myaccount.google.com/lesssecureapps?pli=1)

Recomendo que use o [Mailtrap](https://www.mailtrap.io) para testar o envio de emails.

## Usuários
Use a factory UserFactory para popular a tabela de usuários.

## Packages usados
 - [Laravel Collective](https://laravelcollective.com/docs/5.2/html)
 - [Guzzle](https://github.com/guzzle/guzzle)
