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

scenario 'alterar Cliente' do #, :javascript => true do
    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
   fill_in 'cliente_nome', :with => 'Maria'
   fill_in "cliente_telefone", :with => '1111111'
   fill_in "cliente_cpf", :with =>'222222221'
   fill_in "cliente_rg", :with =>'5333333'
   fill_in "cliente_endereco", :with =>'rua 123'
   fill_in "cliente_seguro", :with =>'3'
        
    click_button 'Update Cliente'
   
    page.should have_content 'Nome: Maria'
    page.should have_content 'Telefone: 1111111'
    page.should have_content 'Cpf: 222222221'
    page.should have_content 'Rg: 5333333'
    page.should have_content 'Endereco: rua 123'
    page.should have_content 'Seguro: 3'
    
  end

scenario 'excluir cliente' do #, :javascript => true do
    cliente = FactoryGirl.create(:cliente)
    visit clientes_path

    click_link 'Excluir'
    
    Cliente.count.should == 0
  end

end

