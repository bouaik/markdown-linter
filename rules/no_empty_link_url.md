# no empty link url
> print Ok wen url is given to a link

> print Error wen url is not given to a link

**Exemple 1**
```
- Exemple: [@exemple](https://www.exemple.com)
```
linter message
```
1: [OK] url link is good
```
**Exemple 2**
```
- Exemple: [@exemple]()
```
linter message
```
2: [ERROR] url link is empty
```
