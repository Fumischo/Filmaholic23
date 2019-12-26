require 'rails_helper'

RSpec.describe User, type: :system do
  before do
    user = FactoryBot.create(:user)
    # second_user = FactoryBot.create(:second_user)
  end
  
  describe '新規登録画面' do
    context 'ユーザーが新規登録した場合' do
      it 'ユーザがサインアップした際にアカウント登録が完了しました。とフラッシュメッセージが出る' do
        visit root_path
        click_link 'アカウントをお持ちでない方'
        fill_in('user_email', with: 'fumischo@dic.com')
        fill_in('user_password', with: 'password')
        fill_in('user_password_confirmation', with: 'password')
        click_button 'Sign up'
        expect(page).to have_content 'アカウント登録が完了しました。'
      end
    end
  end

  describe 'ログイン画面' do
    context 'ユーザーがログインした場合' do
      it 'ユーザがログインした際にログインしました。とフラッシュメッセージが出る'do
        visit root_path
        fill_in('user_email', with: 'f1@example.com')
        fill_in('user_password', with: 'password')
        click_button 'ログイン'
        
        expect(page).to have_content 'ログインしました。'
    end

  # describe 'facebookでログインした場合' do
  #   it 'ログインできる' do
  #     visit root_path
  #     click_link 'Facebookでログイン'
  #     expect(page).to have_content 'facebook アカウントによる認証に成功しました。'
  #   end
  # end

  describe 'Googleでログインした場合' do
    it 'ログインできる' do
      visit root_path
      # binding.pry
      click_on 'Googleでログイン'
      # click_link 'Sign in with Google '
      expect(page).to have_content "googleアカウントによる認証に成功しました。"
      end
    end
  end
  end
end