window.addEventListener('load', () => {
	const stars = document.querySelector(".ratings").children;                    // class = "ratings" の子要素 = 星5個
	const ratingValue = document.getElementById("rating-value");                  // id = "rating-value" = 点数(hidden-feild) の要素
	const ratingValueDisplay = document.getElementById("rating-value-display");   // id = "rating-value-display" = 点数表示の要素
	let index;

	// stars[i].addEventListener("load",function(){               // 編集時の星表示（作成中）
	// 	for(let j=0; j<=ratingValue.value; j++){          
	// 		stars[j].classList.remove("fa-star-o");
	// 		stars[j].classList.add("fa-star");
	// 		ratingValue.value = i+1;
	// 		ratingValueDisplay.textContent = ratingValue.value;
	// 		index = i;
	// 	}
	// })
	
	for(let i=0; i<stars.length; i++){                       // stars.lengthの値（5回）繰り返し
		stars[i].addEventListener("mouseover",function(){      // 星にカーソルが乗ったときに実行する関数を定義
			for(let j=0; j<stars.length; j++){                   // 星カーソルが乗った時、5回繰り返される
				stars[j].classList.remove("fa-star");              // 全て星を取り除く（星が塗り潰されていることを想定）
				stars[j].classList.add("fa-star-o");               // くり抜かれた星のクラスを付与
			}
			for(let j=0; j<=i; j++){                             // 星の数だけ以下の関数が繰り返される
				stars[j].classList.remove("fa-star-o");
				stars[j].classList.add("fa-star");                 // カーソルが乗った星まで星を塗りつぶす
			}
		})
		
		stars[i].addEventListener("click",function(){          // クリックされた星の番号+1をratingValueに代入
			ratingValue.value = i+1;
			ratingValueDisplay.textContent = ratingValue.value;
			index = i;                                           // indexにクリックされた星の番号を代入（mouseout時に使用）
		})
		
		stars[i].addEventListener("mouseout",function(){       // 星からカーソルが離れたときに実行される関数
			for(let j=0; j<stars.length; j++){                   // まず5回繰り返す
				stars[j].classList.remove("fa-star");              // まず全ての星をくり抜く
				stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=index; j++){                         // クリックされている星まで塗りつぶす
				stars[j].classList.remove("fa-star-o");
				stars[j].classList.add("fa-star");
			}
		})
	}
});