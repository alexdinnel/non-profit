class DonationsController <ApplicationController

  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new
    if @donation.save
      redirect_to donations_path
    else
      render 'donation/new.html.erb'
    end
  end

  def show
    @donation = Donation.find([:id])
  end



end
