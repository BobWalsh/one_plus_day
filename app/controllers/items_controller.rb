class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    @pagy, @items = pagy(Item.sort_by_params(params[:sort], sort_direction))

    # Uncomment to authorize with Pundit
    # authorize @items
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new

    # Uncomment to authorize with Pundit
    # authorize @item
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

    # Uncomment to authorize with Pundit
    # authorize @item

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy!
    respond_to do |format|
      format.html { redirect_to items_url, status: :see_other, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])

    # Uncomment to authorize with Pundit
    # authorize @item
  rescue ActiveRecord::RecordNotFound
    redirect_to items_path
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:day_id, :name, :isdone, :hasslot, :notes, :url, :tags, :slot_number)

    # Uncomment to use Pundit permitted attributes
    # params.require(:item).permit(policy(@item).permitted_attributes)
  end
end
