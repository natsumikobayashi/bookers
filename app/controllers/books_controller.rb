class BooksController < ApplicationController
  def top
  end

  def show
   @book = Book.find(params[:id]) #見たいページを
  end

  def index
    @books=Book.all #booksをすべて表示
    @book=Book.new #データを受け取り新規作成するための空箱
  end

  def edit
    @book=Book.find(params[:id]) #編集したいデータを取得
  end
  
  def create
    book =Book.new(book_params) #データを受け取り新規登録するための空箱
    book.save #bookを保存
    redirect_to book_path(book.id) #ルーティングで投稿内容によって違うページが表示されるように
  end
  
  def destroy
    book=Book.find(params[:id]) #消すデータを取得
    book.destroy #データ削除
    redirect_to '/books' #books一覧画面へリダイレクト
  end
  
  def update
    book = Book.find(params[:id]) #更新するデータ取得
    book.update(book_params) #データ更新
    redirect_to book_path(book.id) #更新した内容が分かるviewへリダイレクト
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
