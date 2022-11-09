class BooksController < ApplicationController
  def top
  end

  def show
   @book = Book.find(params[:id]) #見たいページを取得
  end

  def index
    @books=Book.all #booksをすべて表示
    @book=Book.new #データを受け取り新規作成するための空箱
  end

  def edit
    @book=Book.find(params[:id]) #編集したいデータを取得
    
  end
  
  def create #viewに渡す必要があるため、インスタンス変数使う
    @book =Book.new(book_params) #データを受け取り新規登録するための空箱
    if @book.save #@bookを保存
    flash[:notice] = "Book was successfully created." #投稿完了のフラッシュメッセージ表示
    redirect_to book_path(@book.id) #ルーティングで投稿内容によって違うページが表示されるように
    else
      @books= Book.all #renderアクションのためにインスタンス変数(@books)を定義
      render :index #空白の項目を再編集するためにindexへ(ifの@bookはそのまま使用するためrender)
    end
  end
  
  def destroy #viewに渡す必要がないためローカル変数使う
    book=Book.find(params[:id]) #消すデータを取得
    book.destroy #データ削除
    redirect_to '/books' #books一覧画面へリダイレクト
  end
  
  def update #viewに渡す必要があるためインスタンス変数使う
    @book =Book.find(params[:id]) #更新するデータ取得
    if @book.update(book_params) #編集したデータを更新するか再編集させるか
      flash[:notice] = "Book was successfully updated." #更新できたらフラッシュメッセージ表示
    redirect_to book_path(@book.id) #更新できた内容が分かるviewへリダイレクト
    else
    render :edit #再編集するためにeditへ(ifの@bookはそのまま使用するためrender)
    end
  end
  
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end