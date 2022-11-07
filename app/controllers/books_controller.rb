class BooksController < ApplicationController
  def top
  end

  def show
  end

  def index
    @books=Book.all #booksをすべて表示
    @book=Book.new #データを受け取り新規作成するための空箱
  end

  def edit
    @book=Book.find(params[:id]) #データを取得
  end
  
  def create
    book =Book.new(book_params) #データを受け取り新規登録するための空箱
    book.save #bookを保存
    redirect_to '/books/:id' #ルーティングで投稿内容によって違うページが表示されるように
  end
  
  def destroy
    book=Book.find(params[:id]) #データを1件取得
    book.destroy #データ削除
    redirect_to '/books' #books一覧画面へリダイレクト
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
