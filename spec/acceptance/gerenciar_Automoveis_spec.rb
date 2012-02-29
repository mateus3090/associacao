require 'spec_helper'

feature 'gerenciar_automoveis' do
  before :each do
  end
 
  scenario 'incluir automovel' do
    
    cliente = FactoryGirl.create(:cliente,:nome => 'joao')  
    visit new_automovel_path
   
    

    fill_in 'automovel_codigo', :with => '01'
    fill_in 'automovel_modelo', :with => 'bonito'
    fill_in 'automovel_marca' , :with => 'fiat'
    fill_in 'automovel_tipo' , :with => 'esporte'
    select 'joao', :on => 'cliente'
       
    click_button 'Salvar'
  
  
    page.should have_content 'Codigo: 01'
    page.should have_content 'Modelo: bonito'
    page.should have_content 'Marca: fiat'
    page.should have_content 'Tipo: esporte'
    page.should have_content 'Cliente: joao'

  end



	


