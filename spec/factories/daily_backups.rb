# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :daily_backup do
    server_ip "MyString"
    bucket_name "MyString"
    dbbackup "MyString"
    filesbackup "MyString"
    status "MyString"
    domain_id 1
  end
end
