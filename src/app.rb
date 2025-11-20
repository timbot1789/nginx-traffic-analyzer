require "roda"

class App < Roda
  route do |r|
    r.root do
      r.redirect "/home"
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
