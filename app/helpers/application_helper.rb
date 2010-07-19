# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def link_icon image=nil
    unless image.nil?
      image_tag "icons/normal/#{image}", :mouseover => "icons/hoover/#{image}"
    end
  end
  
  def new_icon
    link_icon "001_01.png"
  end
  
  def home_icon
    
  end
  
  def edit_icon
    link_icon '001_45.png'
  end
  
  def show_icon
    link_icon '001_38.png'
  end
  
  def remove_icon
    link_icon '001_02.png'
  end
  
  def common_index_links object=nil
    unless object.nil?
      "<td> #{link_to(show_icon, url_for(object))} </td>
      <td> #{link_to(edit_icon, url_for(:object => object, :action => 'edit'))} </td>
      <td> #{link_to(remove_icon, url_for(object), :confirm => 'Are you sure?', :method => :delete)} </td>"
    end
  end
end
