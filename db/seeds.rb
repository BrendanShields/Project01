# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create :email => 'a@ga.co', :encrypted_password => 'chicken', :name => 'a', :user_image => 'https://scontent.fsyd3-1.fna.fbcdn.net/v/t31.0-8/10630704_10152830018393072_4911811486274318582_o.jpg?_nc_cat=110&_nc_ht=scontent.fsyd3-1.fna&oh=0c70e37d27b889a61bd10f40fd442f73&oe=5CC00C24'
u2 = User.create :email => 'b@ga.co', :encrypted_password => 'chicken', :name => 'b', :user_image => 'https://scontent.fsyd3-1.fna.fbcdn.net/v/t31.0-8/10320980_10152713449158072_6193499398384767124_o.jpg?_nc_cat=104&_nc_ht=scontent.fsyd3-1.fna&oh=20b31333ad579a5732690649afae0479&oe=5CC33C7B'
u3 = User.create :email => 'c@ga.co', :encrypted_password => 'chicken', :name => 'c', :user_image => 'https://scontent.fsyd3-1.fna.fbcdn.net/v/t31.0-8/1048847_10151811340003072_1849403738_o.jpg?_nc_cat=100&_nc_ht=scontent.fsyd3-1.fna&oh=3aaea6a270e735990bbd2bc6d4c1bcf2&oe=5CBF9AD5'
u4 = User.create :email => 'd@ga.co', :encrypted_password => 'chicken', :name => 'd', :user_image => 'https://scontent.fsyd3-1.fna.fbcdn.net/v/t1.0-9/307700_10150355504653072_6538548_n.jpg?_nc_cat=109&_nc_ht=scontent.fsyd3-1.fna&oh=3e9ab0fcfbae9bb7378b9a726f5bdbcc&oe=5CF90B49'

Image.destroy_all
s1 = Image.create :title => 'Have A Safe Trip Dear', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 1, :user_image => 'https://picsum.photos/800/400'
s2 = Image.create :title => 'Toxic', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 2, :user_image => 'https://picsum.photos/800/500'
s3 = Image.create :title => "Don't Ask Me To Dance", :description 'This is a generic description of an image, creating seed files sucks', :user_id => 3, :user_image => 'https://picsum.photos/450/600'
s4 = Image.create :title => 'Gut Feeling', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 4, :user_image => 'https://picsum.photos/600/400'
s5 = Image.create :title => 'Have A Safe Trip Dear', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 1, :user_image => 'https://picsum.photos/800/400'
s6 = Image.create :title => 'Toxic', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 2, :user_image => 'https://picsum.photos/550/350'
s7 = Image.create :title => "Don't Ask Me To Dance", :description 'This is a generic description of an image, creating seed files sucks', :user_id => 3, :user_image => 'https://picsum.photos/800/400'
s8 = Image.create :title => 'Gut Feeling', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 4, :user_image => 'https://picsum.photos/300/450'
s9 = Image.create :title => 'Have A Safe Trip Dear', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 1, :user_image => 'https://picsum.photos/20/400'
s10 = Image.create :title => 'Toxic', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 2, :user_image => 'https://picsum.photos/600/400'
s11 = Image.create :title => "Don't Ask Me To Dance", :description 'This is a generic description of an image, creating seed files sucks', :user_id => 3, :user_image => 'https://picsum.photos/800/400'
s12 = Image.create :title => 'Gut Feeling', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 4, :user_image => 'https://picsum.photos/900/700'
s13 = Image.create :title => 'Have A Safe Trip Dear', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 1, :user_image => 'https://picsum.photos/350/400'
s14 = Image.create :title => 'Toxic', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 2, :user_image => 'https://picsum.photos/500/800'
s15 = Image.create :title => "Don't Ask Me To Dance", :description 'This is a generic description of an image, creating seed files sucks', :user_id => 3, :user_image => 'https://picsum.photos/800/400'
s16 = Image.create :title => 'Gut Feeling', :description 'This is a generic description of an image, creating seed files sucks', :user_id => 4, :user_image => 'https://picsum.photos/850/400'

Album.destroy_all
l1 = Album.create :title => 'Engine Takes To The Water'
l2 = Album.create :title => 'In The Zone'
l3 = Album.create :title => 'The Last Romance'
l4 = Album.create :title => 'Are We Not Men? We Are Devo'

Artist.destroy_all
a1 = Artist.create :name => 'June of 44'
a2 = Artist.create :name => 'Britney Spears'
a3 = Artist.create :name => 'Arab Strap'
a4 = Artist.create :name => 'Devo'

Genre.destroy_all
g1 = Genre.create :name => 'Nautical Text Rock'
g2 = Genre.create :name => 'Nautical Math Rock'
g3 = Genre.create :name => 'Bollywood Bubblegum Pop'
g4 = Genre.create :name => 'Folk Rock'
g5 = Genre.create :name => 'Scottish Misery Rock'
g6 = Genre.create :name => 'New Wave'

Mixtape.destroy_all
m1 = Mixtape.create :title => 'Driving Songs'
m2 = Mixtape.create :title => 'Makeout Music'
m3 = Mixtape.create :title => 'Code Jams'
m4 = Mixtape.create :title => 'Monkey Mongs'

# Associations #################################################################
# albums and songs
l1.songs << s1
l2.songs << s2
l3.songs << s3
l4.songs << s4

# artists and songs
a1.songs << s1
a2.songs << s2
a3.songs << s3
a4.songs << s4

# genres and songs
s1.genres << g1 << g2
s2.genres << g3
s3.genres << g4 << g5
s4.genres << g6 << g3

# mixtapes and songs
m1.songs << s1 << s2 << s3 << s4
m2.songs << s2 << s2 << s2 << s3
m3.songs << s1 << s4
m4.songs << s4 << s3 << s2

u1.mixtapes << m1 << m2
u2.mixtapes << m3 << m4
