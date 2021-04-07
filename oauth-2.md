# OAuth 2.0

> OAuth is an open standard for [[access-delegation]], commonly used as a way for [[internet]] users to grant websites or applications access to their information on other websites but without giving them the passwords. [wikipedia][1]

A mechanism that allows a resource owner to allow a client to act upon a resource held by a resource server, where the identity of the resource owner is guaranteed by the [[authorization]] server, all mediated through a user agent.

Different combinations of the four roles are allowed.

## Roles

### Resource Owner

### Resource Server

### Client

### [[authorization]] Server

### User Agent

Often a [[web-browser]]

## Why use OAuth 2.0

- Supported by most modern [[infrastructure]], platform products and [[saas]] products
- Flexible, the same core technologies can be used for [[access-delegation]], [[sso]] and for carrying user claims
- Useful mechanism for controlling risk. Can reduce the number of threat vectors by managing a single place where identity is stored and login occurs

## [[authentication]] && [[authorization]] Flows

### [[authorization]] Code

### [[authorization]] Code w/ [[pkce]]

### Implicit Flow with Form Post

### Hybrid

### Client Credentials

### Device [[authorization]]

### Resource Owner Password

## Resources

- [ ] [The OAuth 2.0 Authorization Framework](https://tools.ietf.org/html/rfc6749)
- [ ] [React: Login](https://auth0.com/docs/quickstart/spa/react/01-login)

[1]: https://en.wikipedia.org/wiki/OAuth#OAuth_2.0
