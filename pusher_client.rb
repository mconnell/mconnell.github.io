require 'pusher'

pusher_client = Pusher::Client.new(
  app_id: '734164',
  key: 'af321e502a7dd17a261e',
  secret: '2ffabd91be2d13b98bfd',
  cluster: 'eu',
  encrypted: true
)

pusher_client.trigger('notifications-channel', 'new-notification', {
  message: "Random Number #{rand(100)} from from server"
})
