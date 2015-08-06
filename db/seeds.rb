# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.destroy_all

posts = Post.create ([
  {title: "Floral Romper", brand_name: "Nasty Gal", retailer: "http://www.nastygal.com/", price: "$54", size: "Medium", photo_url: "http://galmeetsglam.com/wp-content/uploads/2014/04/csj40.jpg", description: "I’ve had this floral romper on my wish list for a while and finally decided that for under $60, it was just too good to pass up. I was going to save it for an upcoming Cabo trip, but the beautiful 80 degree weather in Sonoma this past weekend was just perfect for it. From the sweet ruffled edges to floral print to the soft peach shade, it’s everything I look for in a spring outfit.", user_id: 1},
  {title: "Boyfriend Jean", brand_name: "Joe's Jeans", retailer: "http://www.joesjeans.com/", price: "$175", size: "28", photo_url: "http://www.wendyslookbook.com/wp-content/uploads/2011/07/Boyfriend-Jeans-2-433x650.jpg", description: "I’ve slowly been building my wardrobe with classics, but one thing I have yet to invest in is a good boyfriend jean. Love them paired with heels and chic neutrals. How do you wear boyfriend jeans?", user_id: 1},
  {title: "White Shirt and Blue Jeans", brand_name: "Helmut Lang", retailer: "http://www.neimanmarcus.com/Helmut-Lang/Womens/cat43200761/c.cat", price: "$250", size: "Small", photo_url: "http://www.songofstyle.com/wp-content/uploads/2013/11/song-of-style-drape-front-blouse-distressed-jeans.jpg", description: "This is the description, what an awesome white shirt! I bought this in a million different colors because it's so awesome.", user_id: 2},
  {title: "Black Leather Jacket", brand_name: "Veda", retailer: "http://www.thisisveda.com/collections/jackets/products/jayne-jacket-black", price: "$946", size: "Medium", photo_url: "http://ak-hdl.buzzfed.com/static/enhanced/web04/2012/10/25/20/enhanced-buzz-32646-1351212615-2.jpg", description: "You can’t go wrong with a great-fitting black leather jacket. A truly great leather jacket can make serious dent in your bank account. But if you’re willing and able to invest in one, you won’t regret it.", user_id: 2}
  ])
