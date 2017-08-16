# 2. Get the `accessToken`

To get the `accessToken` you will need to send a new POST request like 
before in the previous step with the same headers, but with the following 
content (replace the `token` value with the value of the 
`continuationToken` you got just before):

```json
{
  "token": "user01@james.local_2017-05-23T16:59:56.273Z_DMoVfgOk73rQE6PIpZ3bu8A73nD
      UkZFzZ0r940plo2Ej/AP2S2PfgLSH/oaugafyjohdlO6g+znX+38TA0rjipI/3aTh0q42Vy
      +tAPccy87sFqeC
      +tLpJoukN9bhEFOlpPknz6TMyaW/5P7u0gNLYv5qiKvTxUSulOb4/dpmEnt1y
      +u7SdmAOb/Jt63e9NhWE3YEUz9uUzUXVXcqBX5eJSMBId35f6HnXUu5n
      +ESFip81cI6r34xX/HDf2+mltTTisQdycH5Trjgh6M5R17SJ06DGJkv6iHBccjY3na
      +scCaXo0O3hYScm9lKGeL9gXpNOibUoUyjfSixZC0N1sDCA==",
  "method": "password",
  "password": "1234"
}
```

The `token` field must contain the value of the `continuationToken` got 
just before, and we need to set the `password` field with the user's 
password (here: `1234`).

If all is OK, you will get a `201 Created` response, with a similar 
content:

```json
{
  "accessToken": "e41c4ec1-cabd-4bec-baa3-b2453b3b2b1d",
  "api": "/jmap",
  "eventSource": "/notImplemented",
  "upload": "/upload",
  "download": "/download"
}
```

And here you have the `accessToken` and differents endpoint for using 
JMAP.

In this example it's: `e41c4ec1-cabd-4bec-baa3-b2453b3b2b1d`.

From now, you will have to add the header `Authorization` to the value of 
the `accessToken` got just before, and you are now ready to query what 
you want!
