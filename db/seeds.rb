puts("Cleaning database")
Wish.destroy_all
Category.destroy_all
User.destroy_all

puts("Creating categories")
categories_hash = {
  'Livres' => 'https://image.flaticon.com/icons/svg/2972/2972085.svg', 
  'Électroniques' => 'https://image.flaticon.com/icons/svg/3050/3050233.svg', 
  'Maison' => 'https://image.flaticon.com/icons/svg/3100/3100518.svg', 
  'Vêtements' => 'https://image.flaticon.com/icons/svg/3050/3050239.svg', 
  'Sports' => 'https://image.flaticon.com/icons/svg/3022/3022551.svg', 
  'Jouets' => 'https://image.flaticon.com/icons/svg/2991/2991441.svg', 
  'Musique et films' => 'https://image.flaticon.com/icons/svg/3100/3100428.svg', 
  'Beauté' => 'https://image.flaticon.com/icons/svg/545/545159.svg',
  'Autres' => 'https://image.flaticon.com/icons/svg/837/837845.svg'
}

categories_hash.each do |category, image|
  Category.find_or_create_by(name: category, image: image)
end

puts("Creating users")
# Reyna
User.create!(name: "Reyna", email: "reyna@xmas.ca", birthday: Date.strptime("06/15/2020", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945318.svg", password: "iamreyna", gender: 'F', address: '501 rue des Sourires', delivery_method: 'Garage', politeness: 5, faith: 5)

# Eric
User.create!(name: "Eric", email: "eric@xmas.ca", birthday: Date.strptime("11/17/2019", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945403.svg", password: "iameric", gender: 'M', address: '717 av de la Neige', delivery_method: 'Porte avant', politeness: 5, faith: 5)

# Daenian
User.create!(name: "Daenian", email: "daenian@xmas.ca", birthday: Date.strptime("07/13/2019", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945360.svg", password: "iamdaenian", gender: 'M', address: '100642 crois du Nord', delivery_method: 'Porte arrière', politeness: 5, faith: 5)

# Emma
User.create!(name: "Emma", email: "emma@xmas.ca", birthday: Date.strptime("09/13/2018", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945234.svg", password: "iamemma", gender: 'F', address: '1580 boul des Lutins', delivery_method: 'Garage', politeness: 5, faith: 5)

# Kent
User.create!(name: "Kent", email: "kent@xmas.ca", birthday: Date.strptime("05/18/2017", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945246.svg", password: "iamkent", gender: 'M', address: '501 rue des Sourires', delivery_method: 'Garage', politeness: 3, faith: 5)

# Thang Nghi
User.create!(name: "Thang Nghi", email: "thangnghi@xmas.ca", birthday: Date.strptime("10/26/2006", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945467.svg", password: "iamthangnghi", gender: 'M', address: '955 rue Frosty', delivery_method: 'Cheminée', politeness: 4, faith: 2)

# Thu Hong
User.create!(name: "Thu Hong", email: "thuhong@xmas.ca", birthday: Date.strptime("09/26/2000", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945449.svg", password: "iamthuhong", gender: 'F', address: '955 rue Frosty', delivery_method: 'Cheminée', politeness: 4, faith: 2)

# Christine
User.create!(name: "Christine", email: "christine@xmas.ca", birthday: Date.strptime("03/27/2000", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945419.svg", password: "iamchristine", gender: 'F', address: '5470 av de la Mère Noël', delivery_method: 'Porte avant', politeness: 4, faith: 0)

# Brenda
User.create!(name: "Brenda", email: "brenda@xmas.ca", birthday: Date.strptime("03/29/1997", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945413.svg", password: "iambrenda", gender: 'F', address: '5470 av de la Mère Noël', delivery_method: 'Porte avant', politeness: 4, faith: 0)

# Stephanie
User.create!(name: "Stephanie", email: "steph@xmas.ca", birthday: Date.strptime("10/02/1996", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945258.svg", password: "iamsteph", gender: 'F', address: '8250 rue Claus', delivery_method: 'Porte arrière', politeness: 4, faith: 3)

# Tommy
User.create!(name: "Tommy", email: "tommy@xmas.ca", birthday: Date.strptime("09/14/1996", "%m/%d/%Y"), avatar: "https://image.flaticon.com/icons/svg/2945/2945392.svg", password: "iamtommy", gender: 'M', address: '9499 rue le Grinch', delivery_method: 'Garage', politeness: 0, faith: 5)

puts("Adding custom seeds for testing purposes")

puts("Creating wishes")
wishes = {
  "Teddy bear" => "Jouets",
  "Vingt Milles Lieues sous les Mers" => "Livres",
  "iPhone 11" => "Électroniques",
  "Sofa" => "Maison",
  "T-shirt" => "Vêtements",
  "Soccer ball" => "Sports",
  "Spotify Premium" => "Musique et films",
  "Rouge à lèvres " => "Beauté",
  "Carte cadeau Starbucks" => "Autres"
}

wishes.each do |wish, category|
  User.all.each do |user|
    Wish.create!(name: wish, category: Category.find_by(name: category), user: user)
  end
end


puts("Seeds done! Database is now populated.")