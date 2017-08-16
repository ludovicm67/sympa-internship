# 1. Get a `continuationToken`

From now, I'll consider that you have followed the documentation for 
Apache James that I've written, and that you created the `user01` account.

If you did all things correctly, you will be aible to send a POST request 
to the `http://localhost/authentication` endpoint.

So you will need to set the following headers :

  - `Content-Type` to `application/json; charset=UTF-8`

  - `Accept` to `application/json`

And send the following JSON:

```json
{
  "username": "user01@james.local",
  "clientName": "Sympa",
  "clientVersion": "0.0.1",
  "deviceName": "Device for testing"
}
```

and if it's OK, you will have a `200` response like that:

```json
{
  "continuationToken": "user01@james.local_2017-05-23T16:59:56.273Z_DMoVfgOk73rQE6PIpZ3bu8A73nD
      UkZFzZ0r940plo2Ej/AP2S2PfgLSH/oaugafyjohdlO6g+znX+38TA0rjipI/3aTh0q42Vy
      +tAPccy87sFqeC
      +tLpJoukN9bhEFOlpPknz6TMyaW/5P7u0gNLYv5qiKvTxUSulOb4/dpmEnt1y
      +u7SdmAOb/Jt63e9NhWE3YEUz9uUzUXVXcqBX5eJSMBId35f6HnXUu5n
      +ESFip81cI6r34xX/HDf2+mltTTisQdycH5Trjgh6M5R17SJ06DGJkv6iHBccjY3na
      +scCaXo0O3hYScm9lKGeL9gXpNOibUoUyjfSixZC0N1sDCA==",
  "methods": [
    "password"
  ],
  "prompt": null
}
```

So that's it, you have your `continuationToken`!

In this example it's:

```
user01@james.local_2017-05-23T16:59:56.
273Z_DMoVfgOk73rQE6PIpZ3bu8A73nDUkZFzZ0r940plo2Ej/AP2S2PfgLSH/oaugafyjohdl
O6g+znX+38TA0rjipI/3aTh0q42Vy+tAPccy87sFqeC
+tLpJoukN9bhEFOlpPknz6TMyaW/5P7u0gNLYv5qiKvTxUSulOb4/dpmEnt1y
+u7SdmAOb/Jt63e9NhWE3YEUz9uUzUXVXcqBX5eJSMBId35f6HnXUu5n
+ESFip81cI6r34xX/HDf2+mltTTisQdycH5Trjgh6M5R17SJ06DGJkv6iHBccjY3na
+scCaXo0O3hYScm9lKGeL9gXpNOibUoUyjfSixZC0N1sDCA==
```
