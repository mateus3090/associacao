require 'spec_helper'

describe "ocorrencia/index" do
  before(:each) do
    assign(:ocorrencia, [
      stub_model(Ocorrencium,
        :codigo => "Codigo",
        :data => "Data",
        :descricao => "Descricao",
        :hora => "Hora",
        :cliente => nil,
        :seguro => nil,
        :automovel => nil
      ),
      stub_model(Ocorrencium,
        :codigo => "Codigo",
        :data => "Data",
        :descricao => "Descricao",
        :hora => "Hora",
        :cliente => nil,
        :seguro => nil,
        :automovel => nil
      )
    ])
  end

  it "renders a list of ocorrencia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
