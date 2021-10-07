namespace :fortune do
    desc "毎日，占いの順位を取得する"
    task :get_result_of_fortune_telling do

        agent = Mechanize.new

        # 占い TV News
        page = agent.get("https://uranaitv.jp/rank_fortune")
        sign_names = page.search('.nichiun-rank-item-with-stars-head-title-top h3')
        sign_names.each do |name|
            puts name.inner_text
        end

        # au 占い
        page = agent.get("https://fortune.auone.jp/astro")
        sign_names = page.search('.ft-mainbox__stars_img a')
        sign_names.each do |name|
            puts name.inner_text
        end

        # yahoo 占い
        page = agent.get("https://fortune.yahoo.co.jp/12astro/ranking.html")
        sign_names = page.search('.seiza span img')
        sign_names.each do |name|
            puts name.get_attribute(:alt)
        end

        # 
        page = agent.get("https://fortune.woman.excite.co.jp/free/horoscopes/ranking/")
        sign_names = page.search('.sign_name span')
        sign_names.each do |name|
            puts name.inner_text
        end

    end
end
