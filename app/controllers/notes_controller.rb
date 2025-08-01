class NotesController < ApplicationController
  def index
    @notes = Note.order(created_at: :desc)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path, notice: "Notiz wurde erfolgreich erstellt."
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :content)
  end
end
