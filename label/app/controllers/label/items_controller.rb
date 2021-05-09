require_dependency "label/application_controller"

module Label
  class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    # GET /items
    def index
      # @items = Label::Item::Repository.fetchAll
      @items = Label::DisplayList.call()
    end

    # GET /items/1
    def show
    end

    # GET /items/new
    def new
      @item = Label::Item.new
    end

    # GET /items/1/edit
    def edit
    end

    # POST /items
    def create
      @item = Item.new(item_params)

      if Label::Item::Repository.save(@item)
        redirect_to item_path(@item.id), notice: 'Item was successfully created.'
      else
        render :new
      end
    end

    # TODO:
    # PATCH/PUT /items/1
    def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render :edit
      end
    end

    # TODO
    # DELETE /items/1
    def destroy
      @item.destroy
      redirect_to items_url, notice: 'Item was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = Item::Repository.fetch(id: params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def item_params
        params.permit(:name, :user_id)
      end
  end
end
