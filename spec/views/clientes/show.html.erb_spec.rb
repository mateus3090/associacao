require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :telefone => "Telefone",
      :cpf => "Cpf",
      :rg => "Rg",
      :endereco => "Endereco",
      :seguro => "Seguro"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Seguro/)
  end
end
