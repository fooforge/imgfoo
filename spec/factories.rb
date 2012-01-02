Factory.define :user do |user|
  user.name                   "Example user"
  user.email                  "user@example.com"
  user.password               "Aih1xiv/"
  user.password_confirmation  "Aih1xiv/"
end

Factory.sequence :name do |n|
  "Person #{n}"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end
