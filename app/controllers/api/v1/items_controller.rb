class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
      end
    
      def show
        item = Item.find(params[:id])
        render json: item
      end
    
      def create
        item = Item.create(checklist_id:item_params[:checklist_id], detail: item_params[:detail], completed:item_params[:completed])
        render json: item
      end
    
      def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item
      end
    
      def destroy
        item = Item.find(params[:id])
        item.destroy
      end
      private
        def item_params
          params.permit(:checklist_id, :detail, :completed)
        end
end
