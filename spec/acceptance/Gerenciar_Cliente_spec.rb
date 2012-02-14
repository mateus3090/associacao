require 'spec_helper'

feature 'gerenciar_cliente' do
    before :each do
end

scenario 'Incluir cliente' do
    visit new_cliente_path

fill_in "cliente_nome", :with => 'Mateus'
fill_in "cliente_telefone", :with => '123456'
fill_in "cliente_cpf", :with =>'21221221'
fill_in "cliente_rg", :with =>'5432121'
fill_in "cliente_endereco", :with =>'rua doida'
fill_in "cliente_seguro", :with =>'2'

click_button 'Create Cliente'

    page.should have_content 'Nome: Mateus'
    page.should have_content 'Telefone: 123456'
    page.should have_content 'Cpf: 21221221'
    page.should have_content 'Rg: 5432121'
    page.should have_content 'Endereco: rua doida'
    page.should have_content 'Seguro: 2'
 
 end

end

