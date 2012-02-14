# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    telefone "MyString"
    cpf "MyString"
    rg "MyString"
    endereco "MyString"
    seguro "MyString"
  end
end
