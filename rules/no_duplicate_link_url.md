# no duplicate link url
> print Ok wen a link url is not used before

> print ERROR wen a link url is used before

**Exemple 1**
```
- Exemple: [@exemple](https://www.exemple.com)

- Exemple: [@exemple](https://www.exemple.com)
```
linter message
```
1: [OK] url link is good
3: [ERROR] link url already exist
```
