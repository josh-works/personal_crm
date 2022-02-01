# README

## 2022-01-31

Spent a lot of time thinking about what I want out of this. Practice with:

- authentication (low priority)
- Tailwind
- rapid idea testing
- data modeling, converting to schema, filling with useful (but fake) data

I want to keep track of the tons of folks I meet while bumming around Golden and Denver. 

So, I'm gonna keep track of "relationships", because... thats what they are.

I've had a bunch of recent conversations where I've wanted to quickly jot down/save some details, but deff details recording where the person lives.

But also where I met them. So... onward.

```
rails g model Friend name:string address:string home_lat:string home_long:string where_we_met:string strava_route_where_we_met:string
```

Lets see if we can mock up a usable page on localhost...

making progress. 

```
rails g controller StaticPage home
```

set root there. Localhost renders. Lets get some views for data entry via the web...

So far, so good. I've got an index, with all friends rendered, and a link to "create new friend entry". Lets create the form for that next...

but first, I'll try to send this boulder problem on the other side on the tension board...

almost got it...

OK, ironed out a basic page that can accept an entry. Ugly as hell.

Futzed with params and route paths a bit to get everything happy. https://stevepolito.design/blog/rails-authentication-from-scratch/#step-1-build-user-model has been SO HELPFUL for refreshing my memory of everything. I kinda wanna work through his guide twice. Actually, I probably should. 

anyway, next...

- flesh out the rest of the form
- get at least links in place to google maps, strava, third party sources
- add tailwind because why fucking not, right?
- gonna need to add logins and such, so I can futz around w/this on Heroku but have only my data, and not display it to the world. 


## 2021-10-28
Working through https://www.codewithjason.com/complete-guide-to-rails-testing/

Adding Faker, basic migrations, tests, model, controllers.



### Rspec cheatsheets

- https://devhints.io/rspec
- https://gist.github.com/eliotsykes/5b71277b0813fbc0df56