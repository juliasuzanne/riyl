class InfosController < ApplicationController
  def index
    infos = Info.all
    render json: infos.as_json
  end

  def show
    @info = Info.find_by(id: params[:id])
    render json: @info.as_json
  end

  def create
    info = Info.create(
      photo_url: params[:photo_url],
      author: params[:author],
      favoritepart: params[:favoritepart],
      title: params[:title],
      category: params[:category],
    )
    if info.save
      render json: info.as_json
    else
      render json: { errors: info.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    info = Info.find_by(id: params[:id])

    info.update(
      photo_url: params[:photo_url] || info.photo_url,
      author: params[:author] || info.author,
      favoritepart: params[:favoritepart] || info.favoritepart,
      title: params[:title] || info.title,
      category: params[:category] || info.category,
    )
    render json: info.as_json
  end

  def destroy
    info = Info.find(params[:id])
    info.destroy
  end
end
