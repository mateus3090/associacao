require "spec_helper"

describe AutomovelsController do
  describe "routing" do

    it "routes to #index" do
      get("/automovels").should route_to("automovels#index")
    end

    it "routes to #new" do
      get("/automovels/new").should route_to("automovels#new")
    end

    it "routes to #show" do
      get("/automovels/1").should route_to("automovels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/automovels/1/edit").should route_to("automovels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/automovels").should route_to("automovels#create")
    end

    it "routes to #update" do
      put("/automovels/1").should route_to("automovels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/automovels/1").should route_to("automovels#destroy", :id => "1")
    end

  end
end
