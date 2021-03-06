# ichigotake/docker-mecab-psgi

MeCab API Server on PSGI + Docker as [ytnobody/docker-mecab-psgi](https://github.com/ytnobody/docker-mecab-psgi) compatible.

## SYNOPSIS

    $ heroku plugins:install heroku-container-registry
    $ heroku container:login
    $ heroku create
    $ heroku container:push web --app APP_NAME

## ytnobody/docker-mecab-psgi OR ichigotake/docker-mecab-psgi?

### Q. I will deploy MeCab API to Heroku

We recommend to use this (ichigotake-mecab-psgi), because ytnobody/docker-mecab-psgi is not working on Heroku.

### Q. I will deploy MeCab API to my host

We recommend to use ytnobody/docker-mecab-psgi, because ytnobody/docker-mecab-psgi's image size is smaller than ichigotake/docker-mecab-psgi.

```
$ docker images
REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
ichigotake/docker-mecab-psgi   <none>              0e61e80f8cf2        3 hours ago         904 MB
ytnobody/docker-mecab-psgi     latest              4a3640c86dd7        3 hours ago         570 MB
```

## API [GET /]

Parse specified text and return thair nodes in JSON response.

### PARAM

- text - parse target text

## EXAMPLE

request 

    https://ichigotake-mecab-psgi.herokuapp.com/?text=%E3%81%99%E3%82%82%E3%82%82%E3%82%82%E3%82%82%E3%82%82%E3%82%82%E3%82%82%E3%82%82%E3%81%AE%E3%81%86%E3%81%A1

response

    {"nodes":
      [
        {
          "surface":"すもも","rlength":"9","cost":"7263","isbest":"1","beta":"0","wcost":"7546","stat":"0",
          "feature":["名詞","一般","*","*","*","*","すもも","スモモ","スモモ"],
          "length":"9","rcattr":"1285","alpha":"0","prob":"0","id":"9","lcattr":"1285"
        },
        {
          "surface":"も","rlength":"3","cost":"7774","isbest":"1","beta":"0","wcost":"4669","stat":"0",
          "feature":["助詞","係助詞","*","*","*","*","も","モ","モ"],
          "length":"3","rcattr":"262","alpha":"0","prob":"0","id":"19","lcattr":"262"
        },
        {
          "surface":"もも","rlength":"6","cost":"15010","isbest":"1","beta":"0","wcost":"7219","stat":"0",
          "feature":["名詞","一般","*","*","*","*","もも","モモ","モモ"],
          "length":"6","rcattr":"1285","alpha":"0","prob":"0","id":"25","lcattr":"1285"
        },
        {
          "surface":"も","rlength":"3","cost":"15521","isbest":"1","beta":"0","wcost":"4669","stat":"0",
          "feature":["助詞","係助詞","*","*","*","*","も","モ","モ"],
          "length":"3","rcattr":"262","alpha":"0","prob":"0","id":"31","lcattr":"262"
        },
        {
          "surface":"もも","rlength":"6","cost":"22757","isbest":"1","beta":"0","wcost":"7219","stat":"0",
          "feature":["名詞","一般","*","*","*","*","もも","モモ","モモ"],
          "length":"6","rcattr":"1285","alpha":"0","prob":"0","id":"37","lcattr":"1285"
        },
        {
          "surface":"の","rlength":"3","cost":"23131","isbest":"1","beta":"0","wcost":"4816","stat":"0",
          "feature":["助詞","連体化","*","*","*","*","の","ノ","ノ"],
          "length":"3","rcattr":"368","alpha":"0","prob":"0","id":"46","lcattr":"368"
        },
        {
          "surface":"うち","rlength":"6","cost":"23729","isbest":"1","beta":"0","wcost":"5796","stat":"0",
          "feature":["名詞","非自立","副詞可能","*","*","*","うち","ウチ","ウチ"],
          "length":"6","rcattr":"1313","alpha":"0","prob":"0","id":"56","lcattr":"1313"
        },
        {
          "surface":null,"rlength":"0","cost":"21245","isbest":"1","beta":"0","wcost":"0","stat":"3",
          "feature":["BOS/EOS","*","*","*","*","*","*","*","*"],
          "length":"0","rcattr":"0","alpha":"0","prob":"0","id":"62","lcattr":"0"
        }
      ]
    }

## SEE ALSO

- [Container Registry and Runtime | Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime)
- [ytnobody/docker-mecab-psgi: MeCab API Server on PSGI + Docker](https://github.com/ytnobody/docker-mecab-psgi)

