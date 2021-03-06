class ElectionsController < ApplicationController
  before_action :set_election, only: [:show, :edit, :update, :destroy]

  # GET /elections
  # GET /elections.json
  def index
    @elections = Election.all
  end


  def result
    # @map = {}
    # @total = Election.count(:first_name)
    # %w{Hillary_clinton martin_omalley bernie_sanders jeb_bush ben_carson chris_christie ted_cruz carly_fiorina mike_huckabee john_kasich rand_paul marco_rubio rick_santorum donald_trump}.each do |candidate|
    #   @map[candidate] = (((Election.where(candidate => true).count).to_f / @total.to_f) * 100).round
    # end
    @map = Election.name_and_count_of_candidates
  end

  # GET /elections/1
  # GET /elections/1.json
  def show
  end

  # GET /elections/new
  def new
    @election = Election.new
  end

  # GET /elections/1/edit
  def edit
  end

  # POST /elections
  # POST /elections.json
  def create
    @election = Election.new(election_params)

    respond_to do |format|
      if @election.save
        format.html { redirect_to @election, notice: 'Election was successfully created.' }
        format.json { render :show, status: :created, location: @election }
      else
        format.html { render :new }
        format.json { render json: @election.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elections/1
  # PATCH/PUT /elections/1.json
  def update
    respond_to do |format|
      if @election.update(election_params)
        format.html { redirect_to @election, notice: 'Election was successfully updated.' }
        format.json { render :show, status: :ok, location: @election }
      else
        format.html { render :edit }
        format.json { render json: @election.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elections/1
  # DELETE /elections/1.json
  def destroy
    @election.destroy
    respond_to do |format|
      format.html { redirect_to elections_url, notice: 'Election was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_election
      @election = Election.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def election_params
    params.require(:election).permit(:first_name, :last_name, :hillary_clinton, :martin_omalley, :bernie_sanders, :jeb_bush, :ben_carson, :chris_christie, :ted_cruz, :carly_fiorina, :mike_huckabee, :john_kasich, :rand_paul, :marco_rubio, :rick_santorum, :donald_trump)
  end

  # def countOf_candidate candidate_name
  #   Election.count(candidate_name)
  # end
end
