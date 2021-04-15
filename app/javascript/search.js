if (location.pathname.match("/")||location.pathname.match("/posts/search")){    //URLによる読み込み分岐
  document.addEventListener("DOMContentLoaded", () => {
    const inputElement = document.getElementById("search-input");            // 入力欄の取得
    inputElement.addEventListener("keyup", () => {                      // キー入力時に発火
      const keyword = document.getElementById("search-input").value;         // 入力文字の取得
      const XHR = new XMLHttpRequest();                                 // 非同期通信 HTTPリクエスト送信
      if (location.pathname.match("/posts/search")){                    // URLによる非同期通信のsearchURL分岐
        XHR.open("GET", `search_candidate/?keyword=${keyword}`, true);  // 第一引数：HTTPメソッド、第二引数：URL、第三引数：非同期通信
      } else {
        XHR.open("GET", `posts/search_candidate/?keyword=${keyword}`, true);
      }
      XHR.responseType = "json"; // 返却形式をjsonに指定
      XHR.send();                // リクエスト送信
      XHR.onload = () => {       // レスポンス受信成功時
        const searchResult = document.getElementById("search-result");  // 空のdiv要素取得
        searchResult.innerHTML = ""                                     // 空の文字列を挿入（2回目以降の検索）
        if (XHR.response) {                                             // レスポンス成功時にtrue
          const titleName = XHR.response.keyword;                       // データ受け取り
          const result = titleName.filter((element, index, self) =>     // 重複データの削除
          self.findIndex(e => 
                          e.title === element.title
                        ) === index
          );

          result.forEach((t) => {                               // 検索結果の分だけ繰り返し
            const childElement = document.createElement("div"); // 検索結果の表示要素生成
            childElement.setAttribute("class", "search-result-child");        // class指定
            childElement.setAttribute("id", t.id);              // id指定
            childElement.innerHTML = t.title;                   // 文字列操作 tagのnameを表示
            searchResult.appendChild(childElement);             // 空のdiv要素にjsで生成したdiv要素を子要素として追加
            
            const clickElement = document.getElementById(t.id); // クリック要素として検索生成要素取得
            clickElement.addEventListener("click", () => {      // クリック時に発火
              document.getElementById("search-input").value = clickElement.textContent; // 入力欄にクリック要素を代入
              searchResult.innerHTML = ""    // 全検索要素削除（中身を空にすることで削除）
            });
          });
        };
      };
    });
  });
};