require 'spec_helper'

describe "seguros/edit" do
  before(:each) do
    @seguro = assign(:seguro, stub_model(Seguro,
      :codigo => "MyString",
      :tipo => "MyString",
      :descricao => "MyString",
      :automovel => nil
    ))
  end

  it "renders the edit seguro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seguros_path(@seguro), :method => "post" do
      assert_select "input#seguro_codigo", :name => "seguro[codigo]"
      assert_select "input#seguro_tipo", :name => "seguro[tipo]"
      assert_select "input#seguro_descricao", :name => "seguro[descricao]"
      assert_select "input#seguro_automovel", :name => "seguro[automovel]"
    end
  end
end
