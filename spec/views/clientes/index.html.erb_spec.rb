require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :telefone => "Telefone",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco",
        :seguro => "Seguro"
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :telefone => "Telefone",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco",
        :seguro => "Seguro"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Seguro".to_s, :count => 2
  end
end
