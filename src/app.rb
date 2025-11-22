require "roda"

class App < Roda
  plugin :render, views: "src/views"

  route do |r|
    r.root do
      r.redirect "/home"
    end
    r.on "vw" do
      r.is do
        r.get do
          view("vw_log_view")
        end
      end
    end
    r.on "home" do
      r.is do
        r.get do
          "Bylarge"
        end
      end
    end
  end
end
