# JWT (JSON Web Token)

> [[json]] Web Token is an [[internet]] standard for creating data with optional signature and/or optional [[encryption]] whose payload holds [[json]] that asserts some number of claims. The tokens are signed either using a private secret or a public/private key. [wikipedia][1]

## Access Token

- Short lived
- Included in every request
- Used to authorize request

## Refresh Token

- Long lived
- Used to get a new access token when it expires

## Storing JWTs

### LocalStorage

| Pros                                | Cons                          |
| ----------------------------------- | ----------------------------- |
| Part of native [[javascript]]       | Vulnerable to [[xss]] attacks |
| Easy to pass through in Auth header |                               |

### Cookies

| Pros                                                                                 | Cons                                 |
| ------------------------------------------------------------------------------------ | ------------------------------------ |
| http-only cookies aren't available to client side code, so not vulnerable to [[xss]] | Size limit of 4KB                    |
| Sent with every request                                                              | Can't pass it through in Auth header |

## Resources

- [ ] [LocalStorage vs Cookies: All You Need To Know About Storing JWT Tokens Securely in The Front-End](https://dev.to/cotter/localstorage-vs-cookies-all-you-need-to-know-about-storing-jwt-tokens-securely-in-the-front-end-15id)

[1]: https://en.wikipedia.org/wiki/JSON_Web_Token
