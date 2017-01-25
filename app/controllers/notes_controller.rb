class NotesController < ApplicationController
  def index
    @notes = Note.all
    @notes = @notes.order(:priority)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    if @note.errors.any?
      render 'new'
    else
      redirect_to root_path
    end
  end

  def edit
    @note = Note.find_by(params[:id])
  end

  def update
    @note = Note.find_by(params[:id])

    if @note.update(note_params)
      redirect_to note_path
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path
  end

  def show
    @note = Note.find(params[:id])
  end

  private
  def note_params
    params.require(:note).permit(:priority, :title, :content)
  end
end
