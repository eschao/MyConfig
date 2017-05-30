## Set socket proxy in terminal
  ```
  export http_proxy=socks5://127.0.0.1:1080
  export https_proxy=socks5://127.0.0.1:1080
  ```

## Install/Configure polipo

* Install

  ```brew install polipo```

* Fetch configure sample

    ```vim
    curl -o ~/.polipo https://raw.githubusercontent.com/jech/polipo/master/config.sample
    ```

* Restart service

    ```vim
    launchctl unload /usr/local/opt/polipo/homebrew.mxcl.polipo.plist
    launchctl load /usr/local/opt/polipo/homebrew.mxcl.polipo.plist
    ```

* Visit web administration from **http://127.0.0.1:8123/polipo/config**

* Configure socket proxy
  - Open **~/.polipo**
  - Modify the below lines

    ```
    socksParentProxy = '127.0.0.1:1080'
    socksProxyType = socks5
    proxyAddress = '::0'
    ```

* Set proxy for **npm**

    ```vim
    npm config set proxy http://127.0.0.1:8123
    ```
    
* Set proxy for **Go Get**

  ```vim
  export https_proxy=127.0.0.1:8123
  ```
