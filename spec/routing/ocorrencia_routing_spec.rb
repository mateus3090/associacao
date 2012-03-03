require "spec_helper"

describe OcorrenciaController do
  describe "routing" do

    it "routes to #index" do
      get("/ocorrencia").should route_to("ocorrencia#index")
    end

    it "routes to #new" do
      get("/ocorrencia/new").should route_to("ocorrencia#new")
    end

    it "routes to #show" do
      get("/ocorrencia/1").should route_to("ocorrencia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ocorrencia/1/edit").should route_to("ocorrencia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ocorrencia").should route_to("ocorrencia#create")
    end

    it "routes to #update" do
      put("/ocorrencia/1").should route_to("ocorrencia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ocorrencia/1").should route_to("ocorrencia#destroy", :id => "1")
    end

  end
end
