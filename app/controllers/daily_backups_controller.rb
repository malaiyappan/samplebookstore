class DailyBackupsController < ApplicationController
  # GET /daily_backups
  # GET /daily_backups.json
  def index
    @daily_backups = DailyBackup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_backups }
    end
  end

  # GET /daily_backups/1
  # GET /daily_backups/1.json
  def show
    @daily_backup = DailyBackup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_backup }
    end
  end

  # GET /daily_backups/new
  # GET /daily_backups/new.json
  def new
    @daily_backup = DailyBackup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_backup }
    end
  end

  # GET /daily_backups/1/edit
  def edit
    @daily_backup = DailyBackup.find(params[:id])
  end

  # POST /daily_backups
  # POST /daily_backups.json
  def create
    @daily_backup = DailyBackup.new(params[:daily_backup])

    respond_to do |format|
      if @daily_backup.save
        format.html { redirect_to @daily_backup, notice: 'Daily backup was successfully created.' }
        format.json { render json: @daily_backup, status: :created, location: @daily_backup }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_backup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_backups/1
  # PUT /daily_backups/1.json
  def update
    @daily_backup = DailyBackup.find(params[:id])

    respond_to do |format|
      if @daily_backup.update_attributes(params[:daily_backup])
        format.html { redirect_to @daily_backup, notice: 'Daily backup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_backup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_backups/1
  # DELETE /daily_backups/1.json
  def destroy
    @daily_backup = DailyBackup.find(params[:id])
    @daily_backup.destroy

    respond_to do |format|
      format.html { redirect_to daily_backups_url }
      format.json { head :no_content }
    end
  end
end
