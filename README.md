# nhom2-be2-st4

## Run For Development
Open Terminal: `php artisan serve`

Edit Port: `php artisan serve --port=8080`

## Push Source To Github (Just Studying)
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
