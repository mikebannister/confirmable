module Confirmable
  class Engine < Rails::Engine
    isolate_namespace Confirmable

    initializer 'confirmable.helpers' do
      ActionView::Base.send :include, Confirmable::Engine.helpers
    end
  end
end
