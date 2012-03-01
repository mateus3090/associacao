require 'spec_helper'

describe "atendentes/index" do
  before(:each) do
    assign(:atendentes, [
      stub_model(Atendente,
        :codigo => "Codigo",
        :nome => "Nome",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco"
      ),
      stub_model(Atendente,
        :codigo => "Codigo",
        :nome => "Nome",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of atendentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
