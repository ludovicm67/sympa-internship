# 3. Get all differents endpoint

Making a `GET` request at the authentication endpoint with the 
`Authorization` header set with the value of the `accessToken` you got 
just before, will give you the differents endpoint like before; it can be 
useful if it changes during the time.. so if at one moment you get a 404 
error, it could be nice to run that request to get current endpoints.

It will give you something like that:

```json
{
  "api": "/jmap",
  "eventSource": "/notImplemented",
  "upload": "/upload",
  "download": "/download"
}
```
