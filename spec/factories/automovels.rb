# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :automovel do
    codigo "MyString"
    modelo "MyString"
    marca "MyString"
    tipo "MyString"
    cliente nil
  end
end
