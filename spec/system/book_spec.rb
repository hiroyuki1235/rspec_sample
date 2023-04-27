require "rails_helper"

RSpec.describe "books", type: :system do
    it "GET /books" do
        visit "/books" # /booksへHTTPメソッドGETでアクセス
        expect(page).to have_text("Books") # 表示されたページにBookという文字があることを確認
    end
end
