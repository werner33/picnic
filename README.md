== ThePicnic.nyc

Sundays in the summer, I host picnics in central park. As they have grown, more 
and more I get questions about times, locations, what to bring ect. 

Facebook events is good, but being about to wire up an app from scratch is better!

[ThePicnic.nyc](https://quiet-chamber-2613.herokuapp.com/) is a listing of upcoming picnics. Users can sign up or use their 
Facebook credentials. Guests who RSVP can tell the group what they will be 
bringing. 

The app allows people to subscribe to emails about upcoming picnics. Emails 
feature links that highlight the next picnic. Here is a 
[mailer]( https://github.com/werner33/picnic/blob/master/app/mailers/subscription_mailer.rb).

Users can upload photos to 
[galleries](https://github.com/werner33/picnic/blob/master/app/controllers/photo_galleries_controller.rb)
which are associated with a particular picnic.  

While developing this app I solidified what I had learned about CRUD applications. In 
the future, I will write tests and optimize the frontend with Angular.js.





