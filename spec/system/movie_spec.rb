require 'rails_helper'

RSpec.describe Movie, type: :system do

  before do
    user = FactoryBot.create(:user)
    movie = FactoryBot.create(:movie)
    movie2 = FactoryBot.create(:movie2)
    visit root_path
    click_link 'アカウントをお持ちでない方'
    fill_in('user_email', with: 'fumischo@dic.com')
    fill_in('user_password', with: 'password')
    fill_in('user_password_confirmation', with: 'password')
    click_button 'Sign up'
  end

  describe 'Top画面' do
    context 'ログインした場合' do
      it 'ヘッダーにAmason prime, Hulu,Netflixのリンクが表示される' do
        expect(page).to have_content 'Amazon prime'
        expect(page).to have_content 'Hulu'
        expect(page).to have_content 'Netflix'
      end
      it 'Amazon primeをクリックすると海外映画、日本映画、アニメ3つの選択項目が表示される' do
        click_on 'Amazon prime'
        expect(page).to have_content '海外映画'
        expect(page).to have_content '日本映画'
        expect(page).to have_content 'アニメ'
      end
      it '海外映画を選択すると映画、レビュー一覧画面に遷移する' do
        click_on 'Amazon prime'
        click_on '海外映画'
        expect(page).to have_content 'Amazon primeのレビュー'
      end
      it 'レビュー一覧画面にあるタイトル検索フォームでタイトル検索かけると検索結果が表示される' do
        click_on 'Amazon prime'
        click_on '海外映画'
        fill_in 'search_title', with: 'あと1センチの恋(字幕版)'
        click_button '検索'
        expect(page).to have_content 'あと1センチの恋(字幕版)'
      end
      it 'レビュー一覧画面にあるジャンル検索フォームでジャンル検索かけると当てはまるジャンル検索結果が表示される' do
        click_on 'Amazon prime'
        click_on '海外映画'
        select('ロマンス', from: 'serch_genre')
        click_button '検索'
        # save_and_open_screenshot
        expect(page).to have_content '博士と彼女のセオリー (字幕版)'
      end
    end
  end
end