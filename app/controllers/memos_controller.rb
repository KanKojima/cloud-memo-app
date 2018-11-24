class MemosController < ApplicationController
    def index 
        
        @memos = Memo.all
    end
    
    def new 
        # 新規作成ページが呼ばれた時に動作するアクション
    end
    
    def create
       Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
    #   render plain: params["memos"]["title"] + ":" + params["memos"]["body"]
        redirect_to "/"
    
    end
    
end
