require 'spec_helper'

describe "automovels/show" do
  before(:each) do
    @automovel = assign(:automovel, stub_model(Automovel,
      :codigo => "Codigo",
      :modelo => "Modelo",
      :marca => "Marca",
      :tipo => "Tipo",
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Modelo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Marca/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
