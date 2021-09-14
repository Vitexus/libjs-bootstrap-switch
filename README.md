![Preview](https://raw.githubusercontent.com/Vitexus/libjs-bootstrap-switch/master/project-logo.png)

Debian Package for bootstrap-switch
===================================

Debian package for twitter bootstrap switch http://bootstrapswitch.site/



## How to install ?

```shell
sudo apt install lsb-release wget
echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
sudo apt update
sudo aptitude install libjs-bootstrap-switch
```

## How to use ?

    <link href="/javascript/bootstrap/css/bootstrap-switch.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="/javascript/bootstrap/js/bootstrap-switch.js"></script>

>>You can also use minified versions bootstrap-switch.min.js bootstrap-switch.min.css

