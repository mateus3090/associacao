# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ocorrencium do
    codigo "MyString"
    data "MyString"
    descricao "MyString"
    hora "MyString"
    cliente nil
    seguro nil
    automovel nil
  end
end
