require 'spec_helper'

describe "seguros/new" do
  before(:each) do
    assign(:seguro, stub_model(Seguro,
      :codigo => "MyString",
      :tipo => "MyString",
      :descricao => "MyString",
      :automovel => nil
    ).as_new_record)
  end

  it "renders new seguro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seguros_path, :method => "post" do
      assert_select "input#seguro_codigo", :name => "seguro[codigo]"
      assert_select "input#seguro_tipo", :name => "seguro[tipo]"
      assert_select "input#seguro_descricao", :name => "seguro[descricao]"
      assert_select "input#seguro_automovel", :name => "seguro[automovel]"
    end
  end
end
