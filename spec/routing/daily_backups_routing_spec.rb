require "spec_helper"

describe DailyBackupsController do
  describe "routing" do

    it "routes to #index" do
      get("/daily_backups").should route_to("daily_backups#index")
    end

    it "routes to #new" do
      get("/daily_backups/new").should route_to("daily_backups#new")
    end

    it "routes to #show" do
      get("/daily_backups/1").should route_to("daily_backups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/daily_backups/1/edit").should route_to("daily_backups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/daily_backups").should route_to("daily_backups#create")
    end

    it "routes to #update" do
      put("/daily_backups/1").should route_to("daily_backups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/daily_backups/1").should route_to("daily_backups#destroy", :id => "1")
    end

  end
end
