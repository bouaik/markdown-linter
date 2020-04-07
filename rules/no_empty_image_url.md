# no empty image url
> print Ok wen url is given to an image

> print Error wen url is not given to an image

**Exemple 1**
```
![Capture](https://via.placeholder.com/300x150)
```
linter message
```
1: [OK] url image is good
```
**Exemple 2**
```
![Capture]()
```
linter message
```
3: [ERROR] url image is empty
```
