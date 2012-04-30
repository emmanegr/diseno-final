class User < ActiveRecord::Base
  has_and_belongs_to_many :categorias
  has_many :posts
  has_many :comentarios
  acts_as_authentic
  
  has_attached_file :avatar, :styles => { :big => "266x152#", :thumb => "100x100#" }


def active?
  active
end

def activate!
  self.active = true
  save
end

def deactivate!
  self.active = false
  save
end

def send_activation_instructions!
  reset_perishable_token!
  Notifier.activation_instructions(self).deliver
end

def send_activation_confirmation!
  reset_perishable_token!
  Notifier.activation_confirmation(self).deliver
end

def email_address_with_name
  "#{self.name} <#{self.email}>"
end

def send_forgot_password!
  deactivate!
  reset_perishable_token!
  Notifier.forgot_password(self).deliver
end

end