FactoryBot.define do
  factory :user do
    password { '123456' }

    factory :comm do
      role { User.roles[:comm] }
      email { 'ruuke@mail.ru' }
    end
  end    
end