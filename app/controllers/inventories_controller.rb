class InventoriesController < ApplicationController
    def index
        @inventories = Inventory.all
    end

    def show
    end

    def new
        @inventory = Inventory.new
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

    def find_inventory
        @inventory = Inventory.find(params[:id])
    end

    def inventory_item_params
        params.require(:inventory).permit(:name);
    end
end
