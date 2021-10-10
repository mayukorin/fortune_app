namespace :fortune do
    desc "毎日，占いの順位を取得する"
    task get_result_of_fortune_telling: :environment do

        agent = Mechanize.new
        today = Time.zone.today

        # 占い TV News
        fortune_tv_news = FortuneSite.find_by(name: '占い TV News')
        page = agent.get(fortune_tv_news.web_url)
        sign_names = page.search('.nichiun-rank-item-with-stars-head-title-top h3')
        sign_names.each_with_index do |name, rank|
            sign = WayToCallSign.find_by(name: name.inner_text).sign
            Fortune.create!(sign_id: sign.id, rank: rank+1, fortune_site_id: fortune_tv_news.id, day: today)
        end

        # au 占い
        au_fortune = FortuneSite.find_by(name: 'au 占い')
        page = agent.get(au_fortune.web_url)
        sign_names = page.search('.ft-mainbox__stars_img a')
        sign_names.each_with_index do |name, rank|
            sign = WayToCallSign.find_by(name: name.inner_text).sign
            Fortune.create!(sign_id: sign.id, rank: rank+1, fortune_site_id: au_fortune.id, day: today)
        end

        # yahoo 占い
        yahoo_fortune = FortuneSite.find_by(name: 'yahoo 占い')
        page = agent.get(yahoo_fortune.web_url)
        sign_names = page.search('.seiza span img')
        sign_names.each_with_index do |name, rank|
            sign = WayToCallSign.find_by(name: name.get_attribute(:alt)).sign
            Fortune.create!(sign_id: sign.id, rank: rank+1, fortune_site_id: yahoo_fortune.id, day: today)
        end

        # Woman excite 占い
        woman_excite_fortune = FortuneSite.find_by(name: 'Woman excite 占い')
        page = agent.get(woman_excite_fortune.web_url)
        sign_names = page.search('.sign_name span')
        sign_names.each_with_index do |name, rank|
            sign = WayToCallSign.find_by(name: name.inner_text).sign
            Fortune.create!(sign_id: sign.id, rank: rank+1, fortune_site_id: woman_excite_fortune.id, day: today)
        end


    end
end
