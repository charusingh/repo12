class Notifier < ActionMailer::Base
  default from: "beuty@doorstep.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
@order = order
    @greeting = "Hi"

    mail to: order.email,:subject => 'online beauty store confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped
    @order = order
    @greeting = "Hi"

    mail to: order.email,:subject => 'online beauty store order shipped'
  end
end
