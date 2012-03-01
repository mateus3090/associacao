require 'spec_helper'

describe "seguros/show" do
  before(:each) do
    @seguro = assign(:seguro, stub_model(Seguro,
      :codigo => "Codigo",
      :tipo => "Tipo",
      :descricao => "Descricao",
      :automovel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
