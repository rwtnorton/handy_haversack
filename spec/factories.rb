Factory.define :user do |user|
  user.email    'foo@example.com'
  user.password 'xyzzyfoobar'

  user.after_build do |u|
    u.items << Factory.build(:item, :user => u)
  end

  user.after_create do |u|
    u.items.each do |item|
      item.save!
    end
  end
end

Factory.define :item do |item|
  item.name 'the_thing'
  item.description 'interesting text, I am sure'
  item.content 'Odi et amo quare id faciam fortasse requiris'
end
