module ApplicationHelper
  #Retorna Titulo default
  def full_title(page_title ='')
    base_title= "ChessTutor "
    if page_title.empty?
      return base_title
    else
      return base_title + page_title
    end
  end
end
