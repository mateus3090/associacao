require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :telefone => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :endereco => "MyString",
      :seguro => "MyString"
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path, :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_telefone", :name => "cliente[telefone]"
      assert_select "input#cliente_cpf", :name => "cliente[cpf]"
      assert_select "input#cliente_rg", :name => "cliente[rg]"
      assert_select "input#cliente_endereco", :name => "cliente[endereco]"
      assert_select "input#cliente_seguro", :name => "cliente[seguro]"
    end
  end
end
