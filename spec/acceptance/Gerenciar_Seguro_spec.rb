require 'spec_helper'

feature 'gerenciar_seguro' do
  before :each do
  end
 
  scenario 'incluir seguro' do
    
    automovel = FactoryGirl.create(:automovel,:marca => 'vw')  
    #seguro = FactoryGirl.create(:seguro)
    visit new_seguro_path
   
    

    fill_in 'seguro_codigo', :with => '01'
    fill_in 'seguro_tipo', :with => 'caro'
    fill_in 'seguro_descricao' , :with => 'aaa'
    select 'vw', :on => 'automovel'
       
    click_button 'Salvar'
  
  
    page.should have_content 'Codigo: 01'
    page.should have_content 'Tipo: caro'
    page.should have_content 'Descricao: aaa'
    page.should have_content 'Automovel: vw'

  end

end

