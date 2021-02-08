class PagesController < ApplicationController
  def contact
    # => Fetch model data
    # User.all
    # params['member'] # => searched term ju
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

    if params[:member].present?
      @members = @members.select { |member| member.starts_with?(params['member']) }
    end
  end


  def about
  end
end


