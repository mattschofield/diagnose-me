class DiagnosisRequestsController < ApplicationController
  # GET /diagnosis_requests
  # GET /diagnosis_requests.json
  def index
    @diagnosis_requests = DiagnosisRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diagnosis_requests }
    end
  end

  # GET /diagnosis_requests/1
  # GET /diagnosis_requests/1.json
  def show
    @diagnosis_request = DiagnosisRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diagnosis_request }
    end
  end

  # GET /diagnosis_requests/new
  # GET /diagnosis_requests/new.json
  def new
    @diagnosis_request = DiagnosisRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diagnosis_request }
    end
  end

  # GET /diagnosis_requests/1/edit
  def edit
    @diagnosis_request = DiagnosisRequest.find(params[:id])
  end

  # POST /diagnosis_requests
  # POST /diagnosis_requests.json
  def create
    @diagnosis_request = DiagnosisRequest.new(params[:diagnosis_request])

    respond_to do |format|
      if @diagnosis_request.save
        format.html { redirect_to @diagnosis_request, notice: 'Diagnosis request was successfully created.' }
        format.json { render json: @diagnosis_request, status: :created, location: @diagnosis_request }
      else
        format.html { render action: "new" }
        format.json { render json: @diagnosis_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diagnosis_requests/1
  # PUT /diagnosis_requests/1.json
  def update
    @diagnosis_request = DiagnosisRequest.find(params[:id])

    respond_to do |format|
      if @diagnosis_request.update_attributes(params[:diagnosis_request])
        format.html { redirect_to @diagnosis_request, notice: 'Diagnosis request was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @diagnosis_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_requests/1
  # DELETE /diagnosis_requests/1.json
  def destroy
    @diagnosis_request = DiagnosisRequest.find(params[:id])
    @diagnosis_request.destroy

    respond_to do |format|
      format.html { redirect_to diagnosis_requests_url }
      format.json { head :ok }
    end
  end
end
