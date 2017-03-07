### 1. 登录API

* URL: 
```
  http://<server>:<port>/login
```
* Method: **POST**
* Headers: 
```
  Content-Type:application/json
```
* Post data(JSON): 
```
  { "username":"xxx", "password":"xxxx" }
```
* Response:
```
  {"token":"eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0IiwiaXNzIjoiV2VpWXVhbiIsImlhdCI6MTQ4ODg1MzUwNSwiZXhwIjoxNDg4ODUzODA1fQ.dzavHX7AqvMd_k_2mUl9jRJjJCUb71pPtaaoOhCriphcJlF6lYYu-sEtEu-s96P0me_BFpINLKVJJ9qCPCGaKQ"}
```

### 2. 两要素验证

* URL: 
```
  http://<server>:<port>/apis/auth/two-items-auth
```
* Method: **POST**
* Headers:
```
  Content-Type:application/json
  Authorization:Bearer <token>
```
* Post data:
```
  {"name":"xxx","id":"xxxxxxxxxxxxxxxxxx"}
```
* Response:
  * Success:
  ```
  {
    "success": true, // 表示成功
    "error": null,
    "message": "0XXX",
    "authResults":
    [
      ...
    ]
  }
  ```
  * Fail:
  ```
    {
        "success": false,
        "error": null,
        "message": "5XXX",
        "authResults": // 具体错误信息
        [
            {
                "code": "5",
                "description": "xxxx",
                "possibleReason": "xxxx",
                "advice": "xxx"
            },
            {
                "code": "X",
                "description": "未执行",
                "possibleReason": "",
                "advice": ""
            },
            {
                "code": "X",
                "description": "",
                "possibleReason": "",
                "advice": ""
            }
        ]
    }
    ```
    
### 3. 四要素验证
* URL: 
```
  http://<server>:<port>/apis/auth/four-items-auth
```
* Method: **POST**
* Headers:
```
  Content-Type:application/json
  Authorization:Bearer <token>
```
* Post data:
```
  {"name":"xx","id":"xxxxxxx","startDate":"20100530","endDate":"20300530"}
```
* Response: **同上**
