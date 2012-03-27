class MileageEntriesController < ApplicationController
  # GET /mileage_entries
  # GET /mileage_entries.json
  def index
    @mileage_entries = MileageEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mileage_entries }
    end
  end

  # GET /mileage_entries/1
  # GET /mileage_entries/1.json
  def show
    @mileage_entry = MileageEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mileage_entry }
    end
  end

  # GET /mileage_entries/new
  # GET /mileage_entries/new.json
  def new
    @mileage_entry = MileageEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mileage_entry }
    end
  end

  # GET /mileage_entries/1/edit
  def edit
    @mileage_entry = MileageEntry.find(params[:id])
  end

  # POST /mileage_entries
  # POST /mileage_entries.json
  def create
    @mileage_entry = MileageEntry.new(params[:mileage_entry])

    respond_to do |format|
      if @mileage_entry.save
        format.html { redirect_to @mileage_entry, notice: 'Mileage entry was successfully created.' }
        format.json { render json: @mileage_entry, status: :created, location: @mileage_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @mileage_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mileage_entries/1
  # PUT /mileage_entries/1.json
  def update
    @mileage_entry = MileageEntry.find(params[:id])

    respond_to do |format|
      if @mileage_entry.update_attributes(params[:mileage_entry])
        format.html { redirect_to @mileage_entry, notice: 'Mileage entry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mileage_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mileage_entries/1
  # DELETE /mileage_entries/1.json
  def destroy
    @mileage_entry = MileageEntry.find(params[:id])
    @mileage_entry.destroy

    respond_to do |format|
      format.html { redirect_to mileage_entries_url }
      format.json { head :ok }
    end
  end
end
