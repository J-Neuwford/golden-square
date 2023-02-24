require "password_checker"

RSpec.describe PasswordChecker do
  it "verify valid input" do
    password = PasswordChecker.new
    result = password.check("Josh_and_Dilan")
    expect(result).to eq true
  end

  it "invalid password" do
    password = PasswordChecker.new
    expect { password.check("Josh")}.to raise_error "Invalid password, must be 8+ characters."
  end
end