puts("Cleaning database")
Wish.destroy_all
Category.destroy_all
User.destroy_all

puts("Creating categories")
categories_arr = ['Livres', 'Électroniques', 'Maison', 'Vêtements', 'Sports', 'Jouets', 'Musique et films', 'Beauté', 'Autres']

categories_arr.each do |category|
  Category.find_or_create_by!(name: category)
end

puts("Creating users")
# Reyna
User.create!(name: "Reyna", email: "reyna@xmas.ca", birthday: Date.strptime("06/15/2020", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945318.svg", password: "iamreyna")

# Eric
User.create!(name: "Eric", email: "eric@xmas.ca", birthday: Date.strptime("11/17/2019", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945403.svg", password: "iameric")

# Daenian
User.create!(name: "Daenian", email: "daenian@xmas.ca", birthday: Date.strptime("07/13/2019", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945360.svg", password: "iamdaenian")

# Emma
User.create!(name: "Emma", email: "emma@xmas.ca", birthday: Date.strptime("09/13/2018", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945234.svg", password: "iamemma")

# Kent
User.create!(name: "Kent", email: "kent@xmas.ca", birthday: Date.strptime("05/18/2017", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945246.svg", password: "iamkent")

# Thang Nghi
User.create!(name: "Thang Nghi", email: "thangnghi@xmas.ca", birthday: Date.strptime("10/26/2006", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945467.svg", password: "iamthangnghi")

# Thu Hong
User.create!(name: "Thu Hong", email: "thuhong@xmas.ca", birthday: Date.strptime("09/26/2000", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945449.svg", password: "iamthuhong")

# Christine
User.create!(name: "Christine", email: "christine@xmas.ca", birthday: Date.strptime("03/27/2000", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945419.svg", password: "iamchristine")

# Brenda
User.create!(name: "Brenda", email: "brenda@xmas.ca", birthday: Date.strptime("03/29/1997", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945413.svg", password: "iambrenda")

# Stephanie
User.create!(name: "Stephanie", email: "steph@xmas.ca", birthday: Date.strptime("10/02/1996", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945258.svg", password: "iamsteph")

# Tommy
User.create!(name: "Tommy", email: "tommy@xmas.ca", birthday: Date.strptime("09/14/1996", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945392.svg", password: "iamtommy")

puts("Creating wishes")
wishes = {
  "Teddy bear" => "Jouets",
  "Vingt Milles Lieues sous les Mers" => "Livres",
  "iPhone 11" => "Électroniques"
}

wishes.each do |wish, category|
  User.all.each do |user|
    Wish.create!(name: wish, category: Category.find_by(name: category), user: user)
  end
end

puts("Seeds done! Database is now populated.")