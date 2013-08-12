class NeuotransmitterReportsController < ApplicationController
  # GET /neuotransmitter_reports
  # GET /neuotransmitter_reports.json
  def index
    @neuotransmitter_reports = NeuotransmitterReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @neuotransmitter_reports }
    end
  end

  # GET /neuotransmitter_reports/1
  # GET /neuotransmitter_reports/1.json
  def show
    @neuotransmitter_report = NeuotransmitterReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @neuotransmitter_report }
    end
  end

  # GET /neuotransmitter_reports/new
  # GET /neuotransmitter_reports/new.json
  def new
           
    #@neuotransmitter_report = NeuotransmitterReport.new
     # LDN_report = Nokogiri::XML(open("LDN_neurotransmitter_report"))
      
      
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @neuotransmitter_report }
    end
  end

  # GET /neuotransmitter_reports/1/edit
  def edit
    @neuotransmitter_report = NeuotransmitterReport.find(params[:id])
  end

  # POST /neuotransmitter_reports
  # POST /neuotransmitter_reports.json
  def create
    @neuotransmitter_report = NeuotransmitterReport.new(params[:neuotransmitter_report])

    respond_to do |format|
      if @neuotransmitter_report.save
        format.html { redirect_to @neuotransmitter_report, notice: 'Neuotransmitter report was successfully created.' }
        format.json { render json: @neuotransmitter_report, status: :created, location: @neuotransmitter_report }
      else
        format.html { render action: "new" }
        format.json { render json: @neuotransmitter_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /neuotransmitter_reports/1
  # PUT /neuotransmitter_reports/1.json
  def update
    @neuotransmitter_report = NeuotransmitterReport.find(params[:id])

    respond_to do |format|
      if @neuotransmitter_report.update_attributes(params[:neuotransmitter_report])
        format.html { redirect_to @neuotransmitter_report, notice: 'Neuotransmitter report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @neuotransmitter_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neuotransmitter_reports/1
  # DELETE /neuotransmitter_reports/1.json
  def destroy
    @neuotransmitter_report = NeuotransmitterReport.find(params[:id])
    @neuotransmitter_report.destroy

    respond_to do |format|
      format.html { redirect_to neuotransmitter_reports_url }
      format.json { head :no_content }
    end
  end
end
