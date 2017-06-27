class ResolutionsController < ApplicationController
  def index
    @resolutions = Resolution.all.order(date: :desc)
    render component: 'Resolutions', props: {resolutions: @resolutions }, prerender: true
  end

  def show
    @resolution = Resolution.find(params[:id])
    render component: 'Resolution', props: @resolution, prerender: true
  end
end
