# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all
Category.destroy_all
Location.destroy_all

Category.create( name: "Thai", logo:"https://image.shutterstock.com/image-vector/logo-thai-food-restaurant-traditional-260nw-1010500405.jpg")
Category.create( name: "American", logo: "https://www.brandcrowd.com/gallery/brands/pictures/picture1407258374682.png")
Category.create( name: "Bengali", logo: "https://st3.depositphotos.com/1441191/15268/v/1600/depositphotos_152680422-stock-illustration-plate-full-of-delicious-bengali.jpg")
Category.create( name: "Indian", logo: "https://cdn2.vectorstock.com/i/1000x1000/53/91/indian-food-logo-design-inspiration-in-red-color-vector-23585391.jpg")
Category.create( name: "Chinese", logo:"https://cdn4.vectorstock.com/i/1000x1000/72/33/chinese-food-isolated-flat-cartoon-vector-22727233.jpg")
Category.create( name: "Turkish", logo:"https://st2.depositphotos.com/1031343/9043/v/950/depositphotos_90430458-stock-illustration-turkish-cuisine-stamp.jpg")
Category.create( name: "Pakistani", logo: "https://c8.alamy.com/comp/J94GHC/pakistani-cuisine-grunge-rubber-stamp-on-white-background-vector-illustration-J94GHC.jpg")
Category.create( name: "Italian", logo: "https://cdn4.vectorstock.com/i/1000x1000/37/63/italian-restaurant-logo-design-authentic-vector-21183763.jpg")
Category.create( name: "French", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")

Location.create(name: "Queens")
Location.create(name: "Brooklyn")
Location.create(name: "Manhattan")
Location.create(name: "Bronx")
Location.create(name: "Staten Island")

Restaurant.create(name: "212 Burger",
  image:"https://d3tv8y14ogpztx.cloudfront.net/pulses/images/000/034/758/show_box/wagu.jpg",
  contact: "888-347-2747",
  email: "212burger@gmail.com",
  category: Category.first,
  location: Location.first )

Restaurant.create(name: "Top Thai Greenwich",
    image:"https://www.thespruceeats.com/thmb/jAQUDLBwqbGyoLuOt2xdi8r-zXk=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1042998066-518ca1d7f2804eb09039e9e42e91667c.jpg",
    contact: "212-333-4602",
    email: "topthai@gmail.com",
    category: Category.first,
    location: Location.first )

Restaurant.create(name: "212 Burger",
  image:"https://d3tv8y14ogpztx.cloudfront.net/pulses/images/000/034/758/show_box/wagu.jpg",
  contact: "(888) 347-2747",
  email: "212burger@gmail.com",
  category: Category.first,
  location: Location.first )

Restaurant.create(name: "Bhoj Company",
    image:"https://d3tv8y14ogpztx.cloudfront.net/pulses/images/000/034/758/show_box/wagu.jpg",
    contact: "(888) 347-2747",
    email: "212burger@gmail.com",
    category: Category.first,
    location: Location.first )
Restaurant.create(name: "212 Burger",
      image:"https://d3tv8y14ogpztx.cloudfront.net/pulses/images/000/034/758/show_box/wagu.jpg",
      contact: "(888) 347-2747",
      email: "212burger@gmail.com",
      category: Category.first,
      location: Location.first )
Restaurant.create(name:"MainLand China",
        image:"http://www.newsgd.com/news/images/attachement/jpg/site26/20170711/d8cb8a4765ee1ace627e01.jpg",
        contact: "(856)347-2747",
        email:  "mainlandchina@gmail.com",
        category: Category.first,
        location: Location.third )

Restaurant.create(name: "Bhoj Company",
          image:"https://files2.hungryforever.com/wp-content/uploads/2019/03/12160803/meal-1.jpg",
          contact: "(888)347-2747",
          email: "212burger@gmail.com",
          category: Category.fifth,
          location: Location.first)
