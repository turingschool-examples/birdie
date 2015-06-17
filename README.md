# Birdie

Birdie is a server-side application that serves JSON. This app is used to teach AJAX to students at the [Turing School of Software & Design](http://turing.io).

The routes available are,

* GET /api/v1/posts
* POST /api/v1/posts
* GET /api/v1/posts/:id
* PATCH /api/v1/posts/:id
* PUT /api/v1/posts/:id
* DELETE /api/v1/posts/:id

You can find the app running here: https://turing-birdie.herokuapp.com.

If you need to clone it, do the following:

```
git clone git@github.com:turingschool-examples/birdie.git
```

Then just setup the database:

```
bundle && rake db:setup
```

This will create 20 posts that can serve as the base data for students to experiment.

Before each session, when working with the app on Heroku, it is recommended that you clear the database and reseed so that you have a clean state.
