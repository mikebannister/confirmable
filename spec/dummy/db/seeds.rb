module Confirmable
  ids = Widget.all.map(&:id)
  Widget.delete(ids)

  Widget.create(name: 'key')
  Widget.create(name: 'dog')
  Widget.create(name: 'banana')
  Widget.create(name: 'ski')
end
