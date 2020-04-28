# Art Gallery Lab

In this project, we will be practicing object relationships in Ruby, with a particular emphasis on the `has_many` `through` relationship (aka: many-to-many). Please read the whole README before writing any code!

### Introduction

You got yourself a fancy new job and you've been put in charge of making a program to keep track of paintings, and the galleries that are selling them.  

Each painting has a price, and a title.  Each artist has a name and an amount of years of experience, and each gallery has a name and a city.

The initial files and basic attributes have already been built, but you'll need to figure out the relationships and build the rest of the app out yourself!

## Deliverables

### Model the Domain

An artist can, of course, have many paintings. Paintings can only be in one gallery at a time, and only have one artist.  Galleries can have many paintings.

* What are your models?
* What does your schema look like?
* What are the relationships between your models?



### Class Attributes and Methods

**ARTIST**

  XX * `Artist.all`
    * Returns an `array` of all the artists

  XX * `Artist#paintings`
    * Returns an `array` all the paintings by an artist

  XX * `Artist#galleries`
    * Returns an `array` of all the galleries that an artist has paintings in

  XX * `Artist#cities`
    * Return an `array` of all cities that an artist has paintings in

  XX * `Artist.total_experience`
    * Returns an `integer` that is the total years of experience of all artists

 
  XX * `Artist#create_painting`
    * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

**PAINTING**

  XX * `Painting.all`
    * Returns an `array` of all the paintings

  XX * `Painting.total_price`
    * Returns an `integer` that is the total price of all paintings

**GALLERY**

  XX * `Gallery.all`
    * Returns an `array` of all the galleries

  XX * `Gallery#paintings`
    * Returns an `array` of all paintings in a gallery

  XX * `Gallery#artists`
    * Returns an `array` of all artists that have a painting in a gallery

  XX * `Gallery#artist_names`
    * Returns an `array` of the names of all artists that have a painting in a gallery

  XX * `Gallery#most_expensive_painting`
    * Returns an `instance` of the most expensive painting in a gallery
