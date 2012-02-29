require 'spec_helper'

describe "automovels/index" do
  before(:each) do
    assign(:automovels, [
      stub_model(Automovel,
        :codigo => "Codigo",
        :modelo => "Modelo",
        :marca => "Marca",
        :tipo => "Tipo",
        :cliente => nil
      ),
      stub_model(Automovel,
        :codigo => "Codigo",
        :modelo => "Modelo",
        :marca => "Marca",
        :tipo => "Tipo",
        :cliente => nil
      )
    ])
  end

  it "renders a list of automovels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
