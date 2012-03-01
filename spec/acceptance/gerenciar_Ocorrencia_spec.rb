require 'spec_helper'

feature 'gerenciar_ocorrencia' do
  before :each do
  end
 
  scenario 'incluir ocorrencia' do
    
    cliente = FactoryGirl.create(:cliente,:nome => 'joao')
    seguro = FactoryGirl.create(:seguro,:codigo => '01') 
    automovel = FactoryGirl.create(:automovel,:codigo => '01')   
    visit new_ocorrencia_path
   
    

    fill_in 'ocorrencia_codigo', :with => '001'
    fill_in 'ocorrencia_data', :with => '1212'
    fill_in 'ocorrencia_descricao' , :with => 'batida'
    fill_in 'ocorrencia_hora' , :with => '0000'
    select 'joao', :on => 'cliente'
    select '01', :on => 'seguro'
    select '01', :on => 'automovel'
       
       
       
    click_button 'Salvar'
  
  
    page.should have_content 'Codigo: 001'
    page.should have_content 'Data: 1212'
    page.should have_content 'Descricao: batida'
    page.should have_content 'Hora: 0000'
    page.should have_content 'Cliente: joao'
    page.should have_content 'Seguro: 01'
    page.should have_content 'Automovel: 01'

  end
end