module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
   # ページのタイトルを取得
   def full_title(page_title='')
    base_title = 'Filmaholic'
    if page_title.empty?
      base_title
    else
      page_title + '|' + base_title
    end
  end
end
