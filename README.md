# nhom2-be2-st4

## Run For Development
Open Terminal: `php artisan serve`

Edit Port: `php artisan serve --port=8080`

## Config Child Url Public (Not Implement For Production)
Add more a Environment Variable

```
ASSET_URL= (Your Url) # /nhom2-be2-st4/public
```

## Push Source To Github (Just Study, Not Implement For Production)
Edit file .gitignore to push correct source, for example:

```
/node_modules
/public/hot
/public/storage
/storage/*.key
.env.backup
.phpunit.result.cache
Homestead.json
Homestead.yaml
npm-debug.log
yarn-error.log
```

## Deploy To Heroku
Create a file with name `Procfile` with content:

``` web: vendor/bin/heroku-php-apache2 public/ ```

Config and push to Heroku.
