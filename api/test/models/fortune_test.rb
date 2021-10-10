require 'test_helper'

class FortuneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @sign = Sign.create!(name: 'おひつじ座', picture_url: '', month: 1)
    @fortune_site = FortuneSite.create!(name: '占い TV News', web_url: 'https://uranaitv.jp/rank_fortune')
    today = Time.zone.today
    @fortune = Fortune.create(sign_id: @sign.id, rank: 1, fortune_site_id: @fortune_site.id, day: today)
  end


  test "today should be present" do
    @fortune.day = nil
    assert_not @fortune.valid?
  end

  test "rank should be present" do
    @fortune.rank = nil
    assert_not @fortune.valid?
  end

  test "rank should be at most 12" do
    @fortune.rank = 13
    assert_not @fortune.valid?
  end

  test "rank should be at least 1" do
    @fortune.rank = 0
    assert_not @fortune.valid?
  end

  test "sign_id should be present" do
    @fortune.sign_id = nil
    assert_not @fortune.valid?
  end

  test "fortune_site_id should be present" do
    @fortune.fortune_site_id = nil
    assert_not @fortune.valid?
  end

  test "fortune_site_id ans sign_id and day should be unique" do
    duplicate_fortune = @fortune.dup
    @fortune.save
    assert_not duplicate_fortune.valid?
  end

  

end
