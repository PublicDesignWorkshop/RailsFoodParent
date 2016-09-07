module Api
  module V1
    class LocationsController < V1Controller
      before_action :set_location, only: [:show, :edit, :update, :destroy]

      # GET /locations
      # GET /locations.json
      # locations.php covered here.
      # Return response is {"code": 200, "locations": [...]} or {"code": error_code, "message": error_message}
      def index
        @locations = Location.all
      end

      # GET /locations/1
      # GET /locations/1.json
      # def show
      # end

      # GET /locations/new
      # def new
      #   @location = Location.new
      # end

      # GET /locations/1/edit
      # def edit
      # end

      # POST /locations
      # POST /locations.json
      def create
        if current.user.try(:is_privileged?)
          @location = Location.new(location_params)

          respond_to do |format|
            if @location.save
              format.json { render :show, status: :created, location: @location }
            else
              format.json { render json: @location.errors, status: :unprocessable_entity }
            end
          end
        else
          respond_to do |format|
            format.json { head :no_content, status: :forbidden }
          end
        end
      end

      # PATCH/PUT /locations/1
      # PATCH/PUT /locations/1.json
      def update
        if current.user.try(:is_privileged?)
          respond_to do |format|
            if @location.update(location_params)
              format.json { render :show, status: :ok, location: @location }
            else
              format.json { render json: @location.errors, status: :unprocessable_entity }
            end
          end
        else
          respond_to do |format|
            format.json { head :no_content, status: :forbidden }
          end
        end
      end

      # DELETE /locations/1
      # DELETE /locations/1.json
      def destroy
        if current_user.try(:is_admin?)
          @location.destroy
          respond_to do |format|
            format.json { head :no_content }
          end
        else
          respond_to do |format|
            format.json { head :no_content, status: :forbidden }
          end
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_location
          @location = Location.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def location_params
          params.fetch(:location, {}).permit(:id, :name, :lat, :lng, :description, :address)
        end
    end
  end
end
