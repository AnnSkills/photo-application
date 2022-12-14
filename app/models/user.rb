class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :trackable

  def to_s
    email
  end

  private

  def after_confirmation
    WelcomeMailer.send_greeting(self).deliver_now
  end

  after_create do
    customer = Stripe::Customer.create(email: self.email)
    update(stripe_customer_id: customer.id)
  end

end
