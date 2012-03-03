require 'spec_helper'

describe "ocorrencia/show" do
  before(:each) do
    @ocorrencium = assign(:ocorrencium, stub_model(Ocorrencium,
      :codigo => "Codigo",
      :data => "Data",
      :descricao => "Descricao",
      :hora => "Hora",
      :cliente => nil,
      :seguro => nil,
      :automovel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hora/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
