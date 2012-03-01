require "spec_helper"

describe SegurosController do
  describe "routing" do

    it "routes to #index" do
      get("/seguros").should route_to("seguros#index")
    end

    it "routes to #new" do
      get("/seguros/new").should route_to("seguros#new")
    end

    it "routes to #show" do
      get("/seguros/1").should route_to("seguros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seguros/1/edit").should route_to("seguros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seguros").should route_to("seguros#create")
    end

    it "routes to #update" do
      put("/seguros/1").should route_to("seguros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seguros/1").should route_to("seguros#destroy", :id => "1")
    end

  end
end
