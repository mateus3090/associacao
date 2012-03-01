# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :seguro do
    codigo "MyString"
    tipo "MyString"
    descricao "MyString"
    automovel nil
  end
end
