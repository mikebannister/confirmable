Confirmable::Engine.routes.draw do
  match "/*target_url",
        to: 'confirm#confirm',
        as: 'confirm',
        via: 'get'
end
