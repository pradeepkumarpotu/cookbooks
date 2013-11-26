#Mysql Cron jobs
cron "auto_com_import" do
  minute "0"
  hour "09"
  day "*"
  month "*"
  weekday "1-5"
  user "root"
  command "ubuntu ruby /home/ubuntu/auto.com/lib/start_import.rb -e production"
end
cron "auto_com_rodb" do
  minute "0"
  hour "11"
  day "*"
  month "*"
  weekday "1-5"
  user "root"
  command "ubuntu ruby /home/ubuntu/auto.com/lib/start_rodb.rb -e production"
end

