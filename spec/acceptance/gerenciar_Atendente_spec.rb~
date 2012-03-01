require 'spec_helper'

feature 'gerenciar_atendente' do
    before :each do
end

scenario 'Incluir atendente' do
    visit new_atendente_path

    fill_in "atendente_codigo", :with => '01'
    fill_in "atendente_nome", :with => 'Mateus'
    fill_in "atendente_cpf", :with =>'21'
    fill_in "atendente_rg", :with =>'12'
    fill_in "atendente_endereco", :with =>'rua doida'

click_button 'Create Atendente' 
    
    page.should have_content 'Codigo: 01'
    page.should have_content 'Nome: Mateus'
    page.should have_content 'Cpf: 21'
    page.should have_content 'Rg: 12'
    page.should have_content 'Endereco: rua doida'
    
 
 end

scenario 'alterar atendente' do #, :javascript => true do
    atendente = FactoryGirl.create(:atendente)
    visit edit_atendente_path(atendente)
    
    fill_in "atendente_codigo", :with => '01'
    fill_in "atendente_nome", :with => 'Mateus'
    fill_in "atendente_cpf", :with =>'21'
    fill_in "atendente_rg", :with =>'12'
    fill_in "atendente_endereco", :with =>'rua doida'
  
        
    click_button 'Update Atendente'
   
    page.should have_content 'Codigo: 01'
    page.should have_content 'Nome: Mateus'
    page.should have_content 'Cpf: 21'
    page.should have_content 'Rg: 12'
    page.should have_content 'Endereco: rua doida'
  end

scenario 'excluir atendente' do #, :javascript => true do
    atendente = FactoryGirl.create(:atendente)
    visit atendentes_path

    click_link 'Excluir'
    
    Atendente.count.should == 0
  end

end
