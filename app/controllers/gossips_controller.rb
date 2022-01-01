class GossipsController < ApplicationController
  def show
    
  end

  def index
    
  end
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params[:id])
  if @gossip.valid?
    @gossip.save
    redirect_to gossip_path
  else
    render :new
  end
  end

  def show
    @gossip = Gossip.find(gossip_params[:id])
  end
  
  def delete
    @gossip = Gossip.delete
  end

  def update
    @gossip = gossip.update(params)
    if @gossip.valid?
      redirect_to gossip_path
    else
      render :new
    end
  end
  private
  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
end
