# no duplicate image url
> print Ok wen an image url is not used before

> print ERROR wen an image url is used before

**Exemple 1**
```
![Capture](https://via.placeholder.com/300x150/f00)

![Capture](https://via.placeholder.com/300x150/f00)
```
linter message
```
1: [OK] url image is good
3: [ERROR] image url already exist
```
