require_dependency "task/application_controller"

module Task
  class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    # GET /items
    def index
      @items = Task::Item::Repository.fetchAll
      ### @items = Task::DisplayList.call()
    end

    # GET /items/1
    def show
    end

    # GET /items/new
    def new
      # fetch label
      @labels = Label::Item::Repository.fetchAll
      ### Rails.logger.debug(@labels.inspect)
      @item = Task::Item.new
    end

    # GET /items/1/edit
    def edit
      @labels = Label::Item::Repository.fetchAll
    end

    # POST /items
    def create
      @item = Task::Item.new(item_params)

      ### if @item.save
      if Task::Item::Repository.save(@item)
        redirect_to item_path(@item.id), notice: 'Item was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /items/1
    def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render :edit
      end
    end

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
        params.permit(:name, :status, :user_id)
      end
  end
end
