# frozen_string_literal: true

# Entrypoint Object. Executed in config.ru
class App < Roda
  plugin :render, views: 'src/views'
  plugin :assets, css: 'styles.css'

  route do |r|
    r.assets
    r.root do
      r.redirect '/home'
    end
    r.on 'admin' do
      r.is do
        r.get do
          Controllers::AdminLogController.new.get_view_model
          view('vw_log_view')
        end
      end
    end
    r.on 'home' do
      r.is do
        r.get do
          'Bylarge'
        end
      end
    end
  end
end
