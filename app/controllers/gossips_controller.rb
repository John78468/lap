class GossipsController < ApplicationController

    def index
      @gossips = Gossip.all
    end

    def show
      #@gossip = Gossip.find(params[:id])
    end

    def new
      @gossip = Gossip.new
    end

    def edit
      @gossip = Gossip.find(params[:id])
    end

    def update
      
    end

    def create
      @gossip = Gossip.create(gossip_params)
    end

    private

    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
end
