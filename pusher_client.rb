require 'pusher'

pusher_client = Pusher::Client.new(
  app_id: '734164',
  key: 'af321e502a7dd17a261e',
  secret: '2ffabd91be2d13b98bfd',
  cluster: 'eu',
  encrypted: true
)

pusher_client.trigger('my-channel', 'my-event', {
  message: 'hello world'
})
