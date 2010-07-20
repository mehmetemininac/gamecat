# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def link_icon image=nil
    size = 17
    icon_set = 'led_icons'
    unless image.nil?
      image_tag "icons/#{icon_set}/normal/#{image}", :mouseover => "icons/#{icon_set}/hoover/#{image}", :width => size, :height => size
    end
  end
  
  def new_icon
    link_icon "add.png"
  end
  
  def home_icon
    link_icon 'home.png'
  end
  
  def edit_icon
    link_icon 'edit.png'
  end
  
  def show_icon
    link_icon 'detail.png'
  end
  
  def remove_icon
    link_icon 'remove.png'
  end
  
  def view_all_icon
    link_icon 'view_all.png'
  end

  def back_icon
    link_icon 'back.png'
  end
  
  def next_icon
    link_icon 'next.png'
  end
  
  def previous_icon
    link_icon 'previous.png'
  end
  
  def edit_discs_icon
    link_icon 'edit_discs.png'
  end

  def common_links section=nil, object=nil
    unless section.nil?
      manual_edit_path = 'edit_' + object.class.to_s.downcase + '_path(object)'
      if section == :list and !object.nil?
        "<td> #{link_to(show_icon, url_for(object))} </td>
        <td> #{link_to(edit_icon, eval(manual_edit_path))} </td>
        <td> #{link_to(remove_icon, url_for(object), :confirm => 'Are you sure?', :method => :delete)} </td>"
      elsif section == :main
        "<p> #{link_to(new_icon, url_for(:action => 'new'))} 
        #{link_to(home_icon, root_path)} </p>"
      elsif section == :show
        "<p>
          #{link_to(edit_icon, eval(manual_edit_path))}
          #{link_to(remove_icon, url_for(object), :confirm => 'Are you sure?', :method => :delete)}
          #{link_to(back_icon, url_for(:action => 'index'))}
        </p>"
      elsif section == :edit
        "<p>
          #{link_to(show_icon, object)}
          #{link_to(back_icon, url_for(:action => 'index'))}
        </p>"
      elsif section == :new
        "<p>
        #{link_to(back_icon, url_for(:action => 'index'))}
        </p>"
      elsif section == :edit_discs
        manual_edit_discs_path = 'edit_discs_path(object)'
        "<p>
          #{link_to(edit_icon, eval(manual_edit_path))}
          #{link_to(edit_discs_icon, eval(manual_edit_discs_path))}
          #{link_to(remove_icon, url_for(object), :confirm => 'Are you sure?', :method => :delete)}
          #{link_to(back_icon, url_for(:action => 'index'))}
        </p>"
      end
    end
  end
end
