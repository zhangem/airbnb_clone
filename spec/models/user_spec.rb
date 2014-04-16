require 'spec_helper'

describe User do
  it 'sends a welcome email' do
    user = User.new(:email => "jay@gmail.com", :password => "12345678", :password_confirmation => '12345678')
    expect(UserMailer).to receive(:deliver_welcome_message).with(user)
    user.save
  end
  it { should have_many :listings }
end
