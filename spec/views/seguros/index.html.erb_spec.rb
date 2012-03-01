require 'spec_helper'

describe "seguros/index" do
  before(:each) do
    assign(:seguros, [
      stub_model(Seguro,
        :codigo => "Codigo",
        :tipo => "Tipo",
        :descricao => "Descricao",
        :automovel => nil
      ),
      stub_model(Seguro,
        :codigo => "Codigo",
        :tipo => "Tipo",
        :descricao => "Descricao",
        :automovel => nil
      )
    ])
  end

  it "renders a list of seguros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
