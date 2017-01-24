class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
  end

  def edit

  end

  def update
    
  end

  def destroy

  end

  def show
    
  end

  private
  def note_params
    params.require(:note).permit(:priority, :title, :content)
  end
end
