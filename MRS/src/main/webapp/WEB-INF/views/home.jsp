<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>

	<h1>기상청 날씨 API</h1>
	<h2>종로 날씨</h2>
	<p class="result"></p>

	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 메인 화면 -->
<section class="main">
	<%@ include file="include/side.jsp"%>

	<div class="main-right" id="main-right">

		<ul>
			<!-- 검색 기능  -->
			<li class="search"><a>search</a></li>

			<!-- 로고 이미지 -->
			<div class="main-logo-img">
				<img id=""
					src="${pageContext.request.contextPath }/img/logo_whi.png" alt="#">
			</div>

			<!-- 노래 모음 설명 -->
			<li class="choose">
				<!-- 추천 테이블 -->
				<div class="choose-text">them by feeling</div> <!-- 추천 테이블 이미지 -->
				<div class="flex-box">
					<div id="choose-imgs" class="choose-img">
						<img data-keyword="happy" 
							src="${pageContext.request.contextPath }/img/행복한.png" alt="#">
						<img data-keyword="wantSing" 
							src="${pageContext.request.contextPath }/img/불러볼래.png" alt="#">
						<img data-keyword="love" 
							src="${pageContext.request.contextPath }/img/사랑스러운.png" alt="#">
						<img data-keyword="fresh" 
							src="${pageContext.request.contextPath }/img/상큼한.png"	alt="#">
						<img data-keyword="sad" 
							src="${pageContext.request.contextPath }/img/슬픈.png" alt="#">
						<img data-keyword="rest" 
							src="${pageContext.request.contextPath }/img/여행갈래.png" alt="#">
						<img data-keyword="solo" 
							src="${pageContext.request.contextPath }/img/외로운.png" alt="#">
						<img data-keyword="exercise" 
							src="${pageContext.request.contextPath }/img/운동할떄.png" alt="#">
						<img data-keyword="nowHot" 
							src="${pageContext.request.contextPath }/img/인기있는.png" alt="#">
						<img data-keyword="calmness"
							src="${pageContext.request.contextPath }/img/잔잔한.png" alt="#"> 
						<img data-keyword="party" 
							src="${pageContext.request.contextPath }/img/파티.png" alt="#"> 
						<img data-keyword="weather" 
							src="${pageContext.request.contextPath }/img/화창한.png" alt="#">
					</div>
					<%@ include file="include/list.jsp"%>
				</div>

			</li>
		</ul>

	</div>

	<%@ include file="include/detail.jsp"%>
</section>
<script src="https://sdk.scdn.co/spotify-player.js"></script>
<script type="text/javascript">
	
	let title = '';
	let artist = '';
	
	document.getElementById('choose-imgs').addEventListener('click',e=>{
		document.querySelector('#choose-imgs').classList.toggle('flextoggle');
		document.querySelector('#result-list').classList.toggle('hidden');
	
		
		 let MyUrl = "";
	        if(e.target.dataset.keyword === "happy"){ 
	        	// 행복
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=4gzpq5DPGxSnKTe4SA8HAU&seed_genres=pop&seed_tracks=75JFxkI2RXiU7L9VXzMkle"
	        }else if(e.target.dataset.keyword === "wantSing"){
	        	// 불러볼까?
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=40&market=KR&seed_artists=57YbQhFBBDksLzX08lqVnw&seed_genres=겨울&seed_tracks=7vnec3moFU8rMbHFUq9Ue7"
	        	
	        }else if(e.target.dataset.keyword === "sad"){ 
	        	// 슬픈
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=3MaRWfwKpbYnkYHC5gRKYo&seed_genres=슬픈&seed_tracks=7oT5JOWwxnwcZRI6NLzhWs"
	        	
	        }else if(e.target.dataset.keyword === "nowHot"){ 
	        	// 요즘 인기
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=4SpbR6yFEvexJuaBpgAU5p&seed_genres=인기 있는&K-POP&seed_tracks=51vRumtqbkNW9wrKfESwfu"
	        	
	        }else if(e.target.dataset.keyword === "love"){ 
	        	// 사랑
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=6zn0ihyAApAYV51zpXxdEp&seed_genres=love&seed_tracks=47CcHKISaUPsK4QkO9ERFc"
	        	
	        }else if(e.target.dataset.keyword === "solo"){ 
	        	// 외로운
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=4dB2XmMpzPxsMRnt62TbF5&seed_genres=ballad&seed_tracks=10if3nqm7OS7qrV45v9GOg"
	        	
	        }else if(e.target.dataset.keyword === "calmness"){ 
	        	// 잔잔한
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=7c1HgFDe8ogy5NOZ1ANCJQ&seed_genres=잔잔한&발라드&seed_tracks=2YduGtSyKz5Mizcc9mTeFC"
	        	
	        }else if(e.target.dataset.keyword === "fresh"){ 
	        	// 상큼한, 발랄한
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=0du5cEVh5yTK9QJze8zA0C&seed_genres=k-pop&seed_tracks=32OlwWuMpZ6b0aN2RZOeMS"
	        	
	        }else if(e.target.dataset.keyword === "party"){ 
	        	// 파티하자
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=0du5cEVh5yTK9QJze8zA0C&seed_genres=k-pop&seed_tracks=32OlwWuMpZ6b0aN2RZOeMS"
	        	
	        }else if(e.target.dataset.keyword === "exercise"){ 
	        	// 운동하자
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=6fOMl44jA4Sp5b9PpYCkzz&seed_genres=edm&pop&seed_tracks=5rLyYxZNzca00ENADO9m54"
	        	
	        }else if(e.target.dataset.keyword === "rest"){ 
	        	// 여행 가자
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=2el9LgZHLeQnXHABBkgb7M&seed_genres=trip&seed_tracks=4L1MHK27ifT30Ndicpr7js"
	        	
	        }else if(e.target.dataset.keyword === "weather"){ // 날씨 (화창, 흐림, 비, 눈)
	        	//창 이동 후 나타나게?? 
	        	if(e.target.dataset.keyword === "sunny") {
	        	// 화창한 날
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=60&market=KR&seed_artists=3HqSLMAZ3g3d5poNaI7GOU&seed_genres=K-POP%26%ED%99%94%EC%B0%BD%ED%95%9C&seed_tracks=5xrtzzzikpG3BLbo4q1Yul&min_energy=0&max_energy=1"
	        		
	        	} else if (e.target.dataset.keyword === "cloudy") {
	        	// 흐린 날
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=50Zu2bK9y5UAtD0jcqk5VX&seed_genres=우울한&발라드&seed_tracks=5xX7oEKHN0H9VOjezo2ZaA"
	        		
	        	} else if (e.target.dataset.keyword === "rain") {
	        	// 비 오는 날
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=4gzpq5DPGxSnKTe4SA8HAU&seed_genres=pop&seed_tracks=75JFxkI2RXiU7L9VXzMkle"
	        		
	        	} else if (e.target.dataset.keyword === "snow") {
	        	// 눈 오는 날		
	        	MyUrl = "https://api.spotify.com/v1/recommendations?limit=10&min_popularity=80&market=KR&seed_artists=4iHNK0tOyZPYnBU7nGAgpQ&seed_genres=WINTER&SNOW&CALROL&seed_tracks=0bYg9bo50gSsH3LtXe2SQn"
	        		
	        	
	        	} 

			}

		})
		
		fetch( MyUrl , {headers : {"Authorization" : `Bearer ${accessToken}`}
			}).then(res => res.json())
			.then(data => {
				console.log(data);
				[...document.querySelector('#result-list .list-body').children].forEach(child => child.remove());
				[...document.querySelector('.playList .result-list .list-body').children].forEach(child => child.remove());
				[...data.tracks].forEach(track => {
					document.querySelector('#result-list .list-body').insertAdjacentHTML('beforeend',
							 `<li class="flex">
                            <div class="result-image" data-url="`+track.album.images[0].url+`"><img src="`+track.album.images[0].url+`"></img></div>
                            <div class="result-title" data-artists-id="`+track.artists[0].id+`">`+track.name+`</div>
                            <div class="result-artists" data-track-id="`+track.id+`">`+track.artists[0].name+`</div>
                         </li>`);
					
					document.querySelector('.playList .result-list .list-body').insertAdjacentHTML('beforeend',
							 `<li class="flex">
                            <div class="result-image" data-url="`+track.album.images[0].url+`"><img src="`+track.album.images[0].url+`"></img></div>
                            <div class="result-title" data-artists-id="`+track.artists[0].id+`">`+track.name+`</div>
                            <div class="result-artists" data-track-id="`+track.id+`">`+track.artists[0].name+`</div>
                         </li>`);
					
				});
			});

	
	document.querySelectorAll('.result-list').forEach(list => {
	    list.addEventListener('click', e => {
	        if (e.target.classList.contains('result-title')) {
	            document.querySelector('.cover-img').setAttribute('src',
	                e.target.parentNode.querySelector('.result-image').dataset.url);
				document.querySelector('.teamTitle').textContent = (e.target.textContent) + " - " + (e.target.parentNode.querySelector('.result-artists').textContent);
	        }
	    });
	});


	let sky,pty; //하늘상태, 강수형태
	
	//공공데이터 날씨
		 window.onload = () => {
			
			const rsRow = [...document.querySelectorAll('#resultRow *')];

			//현재 날짜를 받아오는 함수
			const getCurrentDateTime = () =>  {
				const now = new Date();
				const year = now.getFullYear();
				let month = now.getMonth() + 1;
				let day = now.getDate();
				let hour = now.getHours();
				let minute = now.getMinutes();

			}

			//월과 일이 한 자리 수인 경우 앞에 0을 추가합니다.
			if(month < 10) {
				month = '0' + month;

			}
			if(day < 10) {
				day = '0' + day;
			}
			if(minute < 10) {
				minute = '0' + minute;
			}

			return { currentDate: year + month + day, currentTime: hour + minute };
		};

			// let date = new date();
			const { currentDate, currentTime} = getCurrentDateTime(); // 현재 날짜와 시간
			let key = 'g4G7rydHK7S6Nlfpzy/7pdkQrtYexqJA3K/YEzlsVbzhB00JsplN4/1JcIi/1GVcGFNDehAgvKYqsHky7QDp4w==';
			let nX = '59';
			let nY = '126';
			
			 
			
			let url = `https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst?serviceKey=${key}&pageNo=1&numOfRows=1000&dataType=JSON&base_date=${currentDate}&base_time=${currentTime}&nx=${nX}&ny=${nY}`;
  			let queryParams = `?serviceKey=${key}&pageNo=1&numOfRows=25&dataType=JSON&base_date=${currentDate}&base_time=${currentTime}&nx=${nX}&ny=${nY}`;
			
					fetch(url+queryParams).then(res => res.json())
				.then(data => {
					console.log(data);
					console.log(data.response);
					console.log(data.response.body);
					console.log(data.response.body.items);
					console.log(data.response.body.items.item);
					let rs = data.response.body.items.item;
					
					console.log(rs[6].fcstValue); //강수 형태
					pty=rs[6].fcstValue; //강수 형태
					console.log(rs[18].fcstValue); //하늘 형태
					sky=rs[18].fcstValue;
					console.log(rs[24].fcstValue); //하늘 형태
					temper=rs[24].fcstValue;

					rsRow[0].textContent=currentDate;
					rsRow[1].textContent=currentTime;
					rsRow[2].textContent=sky;
					rsRow[3].textContent=pty;
					rsRow[4].textContent=temper;

					console.log(rs);
					
					// 음악 재생 로직 추가
					playMusic(sky,pty);
				});


		function playMusic(sky, pty) {   
			let MyUrl = "";

			if (pty === "1" || pty === "2" || pty === "5" || pty === "6") {
			document.querySelector(".weather").datasetKeyword = "rain";
			} else if(sky === "1"){
			document.querySelector(".weather").datasetKeyword = "sunny";
			} else if(sky === "3" || sky === "4"){
				document.querySelector(".weather").datasetKeyword = "cloudy";
			}else if(pty === "3"){
				document.querySelector(".weather").datasetKeyword = "snow";
			}

			console.log(sky);

		//  function playMusic(sky, pty) {
		// 	let pty = rs[6].fcstValue; // 강수 형태
		// 	let sky = rs[18].fcstValue; // 하늘 형태

		// 	if (pty === "1" || pty === "2" || pty === "5" || pty === "6") {
		// 		document.querySelector(".weather").dataKeyword = "rainy";
		// 	} else if (sky === "1") {
		// 		document.querySelector(".weather").dataKeyword = "sunny";
		// 	} else if (sky === "4") {
		// 		document.querySelector(".weather").dataKeyword = "cloudy";
		// 	} else if (sky === "3") {
		// 		document.querySelector(".weather").dataKeyword = "snowy";
		// 	}

		// 	// musicUrl을 사용하여 노래를 재생하는 코드 작성
		// 	 const audio = new Audio(MyUrl);
		// 	 audio.play();
			
	      
	      
		}

	
</script>


</body>
</html>