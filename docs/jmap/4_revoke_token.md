# 4. Revoke a token

Just make a `DELETE` request with the `Authorization` header with the 
value of the `accessToken`, it will give you a `204` response if it was 
OK, or a `401` response if it was already revoked or if no 
`Authorization` header was set.
