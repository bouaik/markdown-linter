# no duplicate link url
> print Ok wen an image url is not used before

> print ERROR wen an image url is used before

Exemple 1
```
- Exemple: [@exemple](https://www.exemple.com)

- Exemple: [@exemple](https://www.exemple.com)
```
linter message
```
1: [OK] url link is good
3: [ERROR] link url already exist
```
