class InventoryItemsController < ApplicationController
    before_action :find_inventory_item, only: [:show]

    def index
        @inventory_items = InventoryItem.all
    end

    def show
    end

    def new
        @inventory_item = InventoryItem.new
    end

    def create
        
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end

    private

    def find_inventory_item
        @inventory_item = InventoryItem.find(params[:id])
    end

    def inventory_item_params
        params.require(:inventory_item).permit(:name);
    end
end
