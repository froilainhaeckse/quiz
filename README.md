INTERNSHIP CHALLENGE QUIZ
===========================

This project was done in preperatation of my internship at SoundCloud in 2016 after the Rails Girls Summer of Code at Soundcloud.

### The Internship challenge Quiz provides the following functions:

* test your personality by answering 3 out of 6 random questions

#### Written in: Ruby, Rails.

### The Quiz communicates with:

* SQLDatbase where the questions and answers are stored.

Installation
---------------

###Install system requirements

You'll need ruby and rails (4) installed.

```sudo install ruby rails```

Running
---------

###To run the Quiz:

```
cd quiz
bin/rake db:rotate
bin/rake db:migrate
bin/rails server
```

Then open http://localhost:3000 in your web browser.

Known problems
----------------

* The Quiz can only be done by one person at a time because there is only one set of data in the database which is directly changed by user-input (no matter what user)

* Having more or less questions in database will break the quiz.
