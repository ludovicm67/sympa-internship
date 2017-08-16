# What is JMAP?

JMAP stands for **J**SON **M**eta **A**pplication **P**rotocol.

From http://jmap.io/ :

> JMAP is intended to be a new standard for email clients to connect to 
> mail stores. It therefore intends to primarily replace IMAP + SMTP 
> submission. It is also designed to be more generic such that it can be 
> extended with contacts, calendars in the future (replacing 
> CardDAV/CalDAV). It does not replace MTA-to-MTA SMTP transmission.

It's a new protocol that was built to replace IMAP. It's easier for 
developpers to work with it, because it returns directly datas on the 
JSON format. It was also designed to make much more efficient use of 
network ressources and integrates some interesting features, like the 
push mechanism, which brings immediates updates for each folders, which 
isn't possible with IMAP (only one folder, and requires persistent 
network connection).
