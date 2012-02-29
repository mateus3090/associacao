require 'spec_helper'

describe "automovels/new" do
  before(:each) do
    assign(:automovel, stub_model(Automovel,
      :codigo => "MyString",
      :modelo => "MyString",
      :marca => "MyString",
      :tipo => "MyString",
      :cliente => nil
    ).as_new_record)
  end

  it "renders new automovel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => automovels_path, :method => "post" do
      assert_select "input#automovel_codigo", :name => "automovel[codigo]"
      assert_select "input#automovel_modelo", :name => "automovel[modelo]"
      assert_select "input#automovel_marca", :name => "automovel[marca]"
      assert_select "input#automovel_tipo", :name => "automovel[tipo]"
      assert_select "input#automovel_cliente", :name => "automovel[cliente]"
    end
  end
end
