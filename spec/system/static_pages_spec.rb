require 'rails_helper'

RSpec.describe Static, type: :system do

  before do
    user = FactoryBot.create(:user)
    visit root_path
    click_link 'ログイン'
    fill_in('user_email', with: 'f1@example.com')
    fill_in('user_password', with: 'password')
    click_button 'ログイン'
  end

  describe 'Top画面' do
    context 'ログインした場合' do
      it 'ヘッダーにAmason prime, Hulu,Netflixのリンクが表示される' do
        expect(page).to have_content 'Amazon prime'
        expect(page).to have_content 'Hulu'
        expect(page).to have_content 'Netflix'
    end
      # it '記事の内容で検索ができる' do
      #   fill_in('q_content_cont', with: 'SecondContent')
      #   click_button 'search'
      #   expect(page).to have_no_content 'MyString'
      #   expect(page).to have_content 'SecondTitle'
      end
    end
  end
