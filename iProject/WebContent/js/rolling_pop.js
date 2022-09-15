//팝업존 로테이션
function cls_popupRotation(){
	this.n =- 1; // 방 번호 (줄)
	this.delay = 3000; // 딜레이
	this.active = true;		
	this.rotationObj;
	this.instance;
	this.numfocus;

	this.rotation = function(){
		if(!this.active){
			setTimeout(this.instance + ".rotation()",this.delay);
			return;
		}
		this.n++;
		if(this.n>=this.rotationObj.length){
			this.n =0;
		}		
		this.display();
		setTimeout(this.instance + ".rotation()",this.delay);
	}
	
	// 레이어 표시 
	this.display = function() {
		for(var i=0 ;i< this.rotationObj.length;i++){
			this.rotationObj[i].style.display="none";
		}					
		this.rotationObj[this.n].style.display="block";	

		if(this.numfocus!=null){
			
			for(var i=0 ;i< this.numfocus.length;i++){
				if(i==this.n){
					var re = new RegExp('_off');
					this.numfocus[i].src = this.numfocus[i].src.replace(re,'_on');
				}
				else{
					var re = new RegExp('_on');
					this.numfocus[i].src = this.numfocus[i].src.replace(re,'_off');
				}
			}					
				
		}
	}
	
	// 이전으로 가기
	this.prev = function(){
		this.n--;
		if(this.n < 0){
			this.n =  this.rotationObj.length - 1;
		}
		this.display();
	}

	// 이후로  가기
	this.next = function(){
		this.n++;
		if(this.n >= this.rotationObj.length){
			this.n = 0;
		}
		this.display();
	}

	// 시작
	this.start = function(){
		this.rotation();
	}

	// 재시작
	this.play = function(){
		this.active = true;
	}

	// 멈춤
	this.stop = function(){
		this.active = false;
	}
}