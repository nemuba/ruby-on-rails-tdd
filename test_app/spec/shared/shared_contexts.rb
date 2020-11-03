RSpec.shared_context 'load global hooks' do
  before(:each) do
    Warden.test_mode!
  end

  after(:each) do
    Warden.test_reset!
  end
end

RSpec.shared_context 'load helper methods' do
  def sign_in(user)
    login_as(user)
  end

  def sign_out
    logout(:user)
  end
end