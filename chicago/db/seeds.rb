# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

[{:title => "Adler Planetarium", :photo_url => "http://static1.squarespace.com/static/50f07ce8e4b07454d6dd2f2f/t/513a62c4e4b0cef39b737f23/1362780875242/adlr7bLR.jpg", :admission_price => 1200, :description => "Though it’s staffed by world-class researchers at the forefront of their field, the museum’s real draw will always be the virtual-reality trips through time and space in the Sky Theater"},
	{:title => "Shedd Aquarium", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/4/4d/Shedd_Aquarium_Chicago_August_2005.jpg", :admission_price =>  3495, :description => "Anchoring the aquatic offerings at this 75-year-old institution are enduring favorites such as piranhas, frogs and snakes of the Amazon; rays, turtles and moray eel of the Caribbean; frightening predator sharks and, the most storied of them all, a 100-plus-year-old Australian lungfish believed to be the longest-living fish in any aquarium in the world. "},
	{:title => "Art Institute of Chicago", :photo_url => "http://media-2.web.britannica.com/eb-media/05/124305-004-F9B15553.jpg", :admission_price => 2300, :description => "You could spend the next four years getting to know this encyclopedic institution, which owns more than 300,000 artworks and artifacts from all over the world and every era from antiquity to the present. Our favorite pieces include the Japanese prints, fragments of local buildings by Frank Lloyd Wright and the Thorne Miniature Rooms."},
	{:title => "Chicago Botanic Garden", :photo_url => "http://www.historylines.net/img/Desktops/big/April_Japanese_Bridge.jpg", :admission_price => 2500, :description => "Water plants are in abundance at this beautiful site, where the sprawling gardens are a series of islands. Stroll through 24 landscapes, including the Japanese Garden, green year-round, and the Regenstein Fruit and Vegetable Garden."},
	{:title => "Chicago Cultural Center", :photo_url => "http://seechicagodance.com/sites/default/files/media/organizations/heather/Chicago-Cultural-Center-Preston-Bradley-Hall1.jpg", :admission_price => 1200, :description => "Since being converted to the Cultural Center in 1991 (it used to be the Chicago Public Library), this city-block-wide institution now offers free classical concerts Mondays, Wednesdays and Sundays. Most of the center’s classical offerings take place in Preston Bradley Hall on the second floor near the Washington Street entrance, but the Claudia Cassidy Theater"}
].each do |place|
	p = Place.new
	p.title = place[:title]
	p.photo_url = place[:photo_url]
	p.admission_price = place[:admission_price]
	p.description = place[:description]
	p.save
end