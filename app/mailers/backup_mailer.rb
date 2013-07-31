class BackupMailer < ActionMailer::Base
  default :from => "smnmalai@gmail.com"
  def backup_status_conformation(backups_status)
    @backups = backups_status
    mail(:to => "smnmalai@gmail.com", :subject => "Backup Status on #{Time.now}")  
  end
end
