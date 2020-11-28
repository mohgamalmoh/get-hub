# README
The idea of this project is to implement a backend application for discovering popular
repositories on GitHub created from a specified date and could be filtered by language.

##Clone this repository.

```console
$ git clone https://github.com/mohgamalmoh/get-hub.git
$ cd get-hub/
```

##Up Docker container.

```console
$ docker-compose up
```


##We have one endpoint to retrieve the most popular repos created from the date defined in app/config/application.yml

We can change this date as a configuration value to be injected 
to the app in runtime so that we don't need to change the date 
through code editing (currently i push this env file to github 
as it doesn't hold any sensitive info, but you may need to add 
it to .gitignore if you decided to put credentials or any 
sensitive info in it).

 ```console
#app/config/application.yml

 GITHUB_REPOS_CREATED_FROM: "2019-05-05"
 ```

##This is an example of an endpoint, we have two possible parameters

1- "lang" to filter the repos by the language

2- "top_count" to limit the number of repos returned, we can set it 
    to 10, 50 or 100.
 ```console
http://localhost:3000/repositories/popular?lang=java&top_count=50
 ```
