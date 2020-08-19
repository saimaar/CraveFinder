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
User.destroy_all

User.create(name: "Maisa Mumtaz",
picture: "https://pbs.twimg.com/profile_images/1128101151289647104/xx2UK7Wc.png",
bio: "I’m someone who firmly believes in constant self-development, and am dedicated to living a life that is both conscious and meaningful.",
email: "hellomaisa@gmail.com",
password:"12345")

User.create(name: "Saima Rahman",
picture: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/61975986_10156249037909149_2781115835261911040_o.jpg?_nc_cat=100&_nc_ohc=Xhg3nOCt9WUAQn4TW3yZ0lLCf94bLKiUxGYhJ-s21PBpzxeNBRp0AKhLA&_nc_ht=scontent-iad3-1.xx&oh=2b03bdd242aebdfbaeedeb55258a3908&oe=5E66F88C",
bio: "Hunter College Alumni 🎓
Coffee & Coconut is Life 🙏🏽 .
current_status = 👩‍💻
NYC📍
🇧🇩/🇺🇸",
email: "saima@gmail.com",
password:"12345")


Category.create( name: "Thai", logo:"https://image.shutterstock.com/image-vector/logo-thai-food-restaurant-traditional-260nw-1010500405.jpg")
Category.create( name: "American", logo: "https://www.brandcrowd.com/gallery/brands/pictures/picture1407258374682.png")
Category.create( name: "Bengali", logo: "https://st3.depositphotos.com/1441191/15268/v/1600/depositphotos_152680422-stock-illustration-plate-full-of-delicious-bengali.jpg")
Category.create( name: "Indian", logo: "https://cdn2.vectorstock.com/i/1000x1000/53/91/indian-food-logo-design-inspiration-in-red-color-vector-23585391.jpg")
Category.create( name: "Chinese", logo:"https://cdn4.vectorstock.com/i/1000x1000/72/33/chinese-food-isolated-flat-cartoon-vector-22727233.jpg")
Category.create( name: "Turkish", logo:"https://st2.depositphotos.com/1031343/9043/v/950/depositphotos_90430458-stock-illustration-turkish-cuisine-stamp.jpg")
Category.create( name: "Pakistani", logo: "https://c8.alamy.com/comp/J94GHC/pakistani-cuisine-grunge-rubber-stamp-on-white-background-vector-illustration-J94GHC.jpg")
Category.create( name: "Italian", logo: "https://cdn4.vectorstock.com/i/1000x1000/37/63/italian-restaurant-logo-design-authentic-vector-21183763.jpg")
Category.create( name: "French", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")
Category.create( name: "Korean", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")
Category.create( name: "Dessert", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")
Category.create( name: "Cafe", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")
Category.create( name: "Indonesian", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")
Category.create( name: "Malaysian", logo: "http://deliciouscuisinesofeuropeandmediterranea.deliciouscuisinesoftheworld.com/wp-content/uploads/2015/12/French_Cuisine_logo.jpg")

Location.create(name: "Queens")
Location.create(name: "Brooklyn")
Location.create(name: "Manhattan")
Location.create(name: "Bronx")
Location.create(name: "Staten Island")
# ----------------------------------Restaurant ------------------------------------------------
Restaurant.create(name: "212 Burger",
  image:"https://d3tv8y14ogpztx.cloudfront.net/pulses/images/000/034/758/show_box/wagu.jpg",
  contact: "(888) 347-2747",
  email: "212burger@gmail.com",
  category: Category.second,
  location: Location.first )

Restaurant.create(name: "Top Thai Greenwich",
  image:"https://www.thespruceeats.com/thmb/jAQUDLBwqbGyoLuOt2xdi8r-zXk=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1042998066-518ca1d7f2804eb09039e9e42e91667c.jpg",
  contact: "(212) 333-4602",
  email: "topthai@gmail.com",
  category: Category.first,
  location: Location.first )

  Restaurant.create(name: "Bhoj Company",
      image:"https://files2.hungryforever.com/wp-content/uploads/2019/03/12160803/meal-1.jpg",
      contact: "(888) 347-2747",
      email: "212burger@gmail.com",
      category: Category.fifth,
      location: Location.first)

Restaurant.create(name: "BURGERS by Honest Chops",
  image:"https://www.seriouseats.com/recipes/images/2017/06/20170617-bulgogi-burger-matt-clifton-1-1500x1125.jpg",
  contact: "(856) 347-2747",
  email: "honestchops@gmail.com",
  category: Category.second,
  location: Location.second )

  Restaurant.create(name: "Bevacco",
    image:"https://www.englishclub.com/images/vocabulary/food/italian/italian-food-640.jpg",
    contact: "(212) 774-9446",
    email: "bevacco@gmail.com",
    category: Category.second,
    location: Location.third )

    Restaurant.create(name: "Artichoke",
      image: "https://raster-static.postmates.com/?url=https%3A%2F%2Fd1725r39asqzt3.cloudfront.net%2F8f804588-6819-421b-89fa-32b457cf18a3%2Forig.png&quality=85&w=640&h=0&mode=auto&format=webp&v=4",
      contact: "(212) 774-9446",
      email: "artichoke@gmail.com",
      category: Category.second,
      location: Location.third )

  Restaurant.create(name: "Holy Cow",
    image:"https://i.pinimg.com/originals/e5/b4/5e/e5b45eed6515e5c7926124e116c296d3.jpg",
    contact: "(212) 774-9446",
    email: "holycow@gmail.com",
    category: Category.second,
    location: Location.third )



Restaurant.create(name: "One Thai Chef",
      image:"https://secure.i.telegraph.co.uk/multimedia/archive/03055/tom-yum_3055855b.jpg",
      contact: "212) 265-9600",
      email: "onethaichef@gmail.com",
      category: Category.first,
      location: Location.last)


Restaurant.create(name: "Modoo Chicken and Noodle Bar",
  image:"https://cdn.cnn.com/cnnnext/dam/assets/181114125823-korean-food-2615002201405003k-jeonju-veteran-kalguksu-full-169.jpg",
  contact: "(888) 347-2747",
  email: "modoo@gmail.com",
  category: Category.first,
  location: Location.second )

Restaurant.create(name: "Jongro BBQ",
  image:"https://www.seriouseats.com/2019/07/20190619-korean-bbq-vicky-wasik-19-1500x1125.jpg",
  contact: "(212)473-2233",
  email: "jongro@gmail.com",
  category: Category.first,
  location: Location.fourth )

Restaurant.create(name:"MainLand China",
        image:"http://www.newsgd.com/news/images/attachement/jpg/site26/20170711/d8cb8a4765ee1ace627e01.jpg",
        contact: "(856) 347-2747",
        email:  "mainlandchina@gmail.com",
        category: Category.first,
        location: Location.third )


Restaurant.create(name: "Tall Grass Burger",
  image:"https://images.squarespace-cdn.com/content/v1/5c27edd95ffd202d56e93f9b/1547699199827-2OQ88VOMO4DS6FHJ5R3S/ke17ZwdGBToddI8pDm48kFpPOwyDofsNBr_8OF21gdh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0oGwQPSn8VqSSM4mc7rOnoihBsAUKA-ed17H8j7fSvX4iWisRJGfcpzQTdlRlSoCSQ/Final%2525252B1.jpg?format=2500w",
  contact: "(212) 253-2990",
  email: "tallgrass@gmail.com",
  category: Category.second,
  location: Location.fourth )

Restaurant.create(name: "Asya Indian Restaurant",
          image:"https://www.nydailynews.com/resizer/Cc3lPgaM_01mFBwy_ZSV2P2557s=/1200x0/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/PTHIHN5WMZEFDFLF5YRQCOQVMY.jpg",
          contact: "(888) 347-2747",
          email: "asya@gmail.com",
          category: Category.fourth,
          location: Location.first)

Restaurant.create(name: "Indian Table",
          image:"https://bollywoodbar.net/ast/uploads/2019/01/Food-Bollywood.jpg",
          contact: "(888) 367-2747",
          email: "indiantable@gmail.com",
          category: Category.fourth,
          location: Location.first)

Restaurant.create(name: "Doner Kebab NYC",
          image:"https://www.recipethis.com/wp-content/uploads/Slimming-World-Chicken-Doner-Kebab-Fakeaway.jpg",
          contact: "(347) 367-2747",
          email: "donerkebab@gmail.com",
          category: Category.fourth,
          location: Location.first)

Restaurant.create(name: "Duzan",
          image:"https://www.recipetineats.com/wp-content/uploads/2014/12/Chicken-Shawarma_5.jpg",
          contact: "(347) 367-2747",
          email: "duzan@gmail.com",
          category: Category.fourth,
          location: Location.first)


  Restaurant.create(name: "Pa pa Rich",
                    image:"https://cdn.concreteplayground.com/content/uploads/2018/04/PappaRich-Food-2-e1524085816165-1920x1440.jpg",
                    contact: "(347) 367-2747",
                    email: "papa@gmail.com",
                    category: Category.fourth,
                    location: Location.first)

  Restaurant.create(name: "Frangos Peri Peri",
                        image:"https://d1ralsognjng37.cloudfront.net/e86173da-7519-42bc-a86f-48178e43ba5e.jpeg",
                        contact: "(347) 367-2747",
                        email: "frangos@gmail.com",
                        category: Category.fourth,
                        location: Location.first)

Restaurant.create(name: "Creperie Nyc",
                      image:"https://images.happycow.net/venues/1024/12/19/hcmp121999_654776.jpeg",
                      contact: "(347) 367-2747",
                      email: "creperie@gmail.com",
                      category: Category.fourth,
                      location: Location.first)
