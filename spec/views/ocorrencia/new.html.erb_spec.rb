require 'spec_helper'

describe "ocorrencia/new" do
  before(:each) do
    assign(:ocorrencium, stub_model(Ocorrencium,
      :codigo => "MyString",
      :data => "MyString",
      :descricao => "MyString",
      :hora => "MyString",
      :cliente => nil,
      :seguro => nil,
      :automovel => nil
    ).as_new_record)
  end

  it "renders new ocorrencium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ocorrencia_path, :method => "post" do
      assert_select "input#ocorrencium_codigo", :name => "ocorrencium[codigo]"
      assert_select "input#ocorrencium_data", :name => "ocorrencium[data]"
      assert_select "input#ocorrencium_descricao", :name => "ocorrencium[descricao]"
      assert_select "input#ocorrencium_hora", :name => "ocorrencium[hora]"
      assert_select "input#ocorrencium_cliente", :name => "ocorrencium[cliente]"
      assert_select "input#ocorrencium_seguro", :name => "ocorrencium[seguro]"
      assert_select "input#ocorrencium_automovel", :name => "ocorrencium[automovel]"
    end
  end
end
