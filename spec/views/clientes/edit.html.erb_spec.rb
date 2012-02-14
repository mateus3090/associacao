require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :telefone => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :endereco => "MyString",
      :seguro => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path(@cliente), :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_telefone", :name => "cliente[telefone]"
      assert_select "input#cliente_cpf", :name => "cliente[cpf]"
      assert_select "input#cliente_rg", :name => "cliente[rg]"
      assert_select "input#cliente_endereco", :name => "cliente[endereco]"
      assert_select "input#cliente_seguro", :name => "cliente[seguro]"
    end
  end
end
