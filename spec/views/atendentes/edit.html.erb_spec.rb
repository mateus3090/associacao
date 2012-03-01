require 'spec_helper'

describe "atendentes/edit" do
  before(:each) do
    @atendente = assign(:atendente, stub_model(Atendente,
      :codigo => "MyString",
      :nome => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :endereco => "MyString"
    ))
  end

  it "renders the edit atendente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => atendentes_path(@atendente), :method => "post" do
      assert_select "input#atendente_codigo", :name => "atendente[codigo]"
      assert_select "input#atendente_nome", :name => "atendente[nome]"
      assert_select "input#atendente_cpf", :name => "atendente[cpf]"
      assert_select "input#atendente_rg", :name => "atendente[rg]"
      assert_select "input#atendente_endereco", :name => "atendente[endereco]"
    end
  end
end
