Installation
============

To use this prototype framework, you'll need to install [Sinatra](http://www.sinatrarb.com/), have a [Heroku account](http://www.heroku.com/), and optionally install [Heroku Toolbelt](https://toolbelt.heroku.com/).

This uses the [Rerun](https://github.com/alexch/rerun) gem to launch your program, then watch the filesystem. If a relevant file changes, then it restarts your program. To fire up the local environment you'll want to run the following in your Terminal:

```
bundle execute rerun 'ruby prototype.rb'
```
