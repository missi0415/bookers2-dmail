namespace :dmail do
      desc "dmail"# このタスクの説明を書く
  # タスクの名前。「:environment」がないとDBやモデルにアクセスできないので、使う場合は付ける
    task dmail: :environment do
    # （毎日）メールを送る処理を書く？
      ThanksMailer.daily.deliver
    end
end
