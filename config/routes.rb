Confirmable::Engine.routes.draw do
  match "/:method/*target_url",
        to: 'confirms#confirm',
        as: 'confirm',
        via: 'get'
end
