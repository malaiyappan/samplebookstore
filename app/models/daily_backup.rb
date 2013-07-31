class DailyBackup < ActiveRecord::Base
  attr_accessible :bucket_name, :dbbackup, :domain_id, :filesbackup, :server_ip, :status
end
