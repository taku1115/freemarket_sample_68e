require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
     user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", birth_day: "0000", birth_month: "000", birth_year: "ooo", first_name_kana: "yuta", )
     user.valid?
     expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end

:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana,