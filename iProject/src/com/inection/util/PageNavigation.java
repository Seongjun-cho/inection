package com.inection.util;
  
import org.apache.commons.lang3.StringUtils;  
 
/** 
 * 		사용 예제
 * 		
 * 		PageNavigation pageNavigation = new PageNavigation(139);	//1. 현재 페이지 번호를 넣어 클래스 생성
 * 		pageNavigation.setTotalCount( 1384 ); 									//2. 전체 게시물 갯수 설정
 * 
 *		String firstHtml = "<a href=\"javascript:searchPage('1');\" title='처음 페이지'><img src='/images/arrow_first.gif' /></a>\r\n"  ;
 *		String prevHtml = "<a href=\"javascript:searchPage('#');\" title='이전 10페이지'><img src='/images/common/pg_prev.gif'  /></a>\r\n" ;
 *		String nowHtml = "<strong>#</strong>\r\n" ;
 *		String pageHtml = "<a href=\"javascript:searchPage('#');\" >#</a>\r\n" ;
 *		String nextHtml = "<a href=\"javascript:searchPage('#');\" title='다음 10페이지' ><img src='/images/common/pg_next.gif' /></a>\r\n" ;
 *		String lastHtml = "<a href=\"javascript:searchPage('#');\" title='마지막 페이지'><img src='/images/arrow_last.gif' /></a>\r\n" ;
 *		
 *		//3. 각 html 넣어 html 반환 
 *		pageNavigation.getPageHtml(firstHtml , prevHtml , nowHtml , pageHtml  , nextHtml , lastHtml) ;
 *
 * @author Administrator
 *
 */
public class PageNavigation {

	/** 
	<div class="pagination">
	<a href="#url" class="direction"><img
		src="images/board/btn_num_forw.gif" alt="처음" /></a> <a
		href="#url" class="direction"><img
		src="images/board/btn_num_prev.gif" alt="이전" /></a> <a
		href="#url">1</a> <strong>2</strong> <a href="#url">3</a> <a
		href="#url">4</a> <a href="#url">5</a> <a href="#url">6</a> <a
		href="#url">7</a> <a href="#url">8</a> <a href="#url">9</a> <a
		href="#url">10</a> <a href="#url" class="direction"><img
		src="images/board/btn_num_next.gif" alt="다음" /></a> <a
		href="#url" class="direction"><img
		src="images/board/btn_num_back.gif" alt="마직막" /></a>
	</div>
	*/
	
	final String firstHtml = "<a href='javascript:searchPage(\"1\");' class='first' title='처음 페이지'><img src='images/common/btn_first.gif' align='absmiddle' border='0' class='img' /></a>\r\n"  ;
	final String prevHtml = "<a href='javascript:searchPage(\"#\");' class='prev' title='이전 10페이지'><img src='images/common/btn_prev.gif' align='absmiddle' border='0' class='img' /></a>\r\n" ;
	final String nowHtml = "<a class='aa' style='color:#ed1c24; font-weight:bold'>#</a>\r\n" ;
	final String pageHtml = "<a href='javascript:searchPage(\"#\");' class='aa'>#</a>\r\n" ;
	final String nextHtml = "<a href='javascript:searchPage(\"#\");' class='next' title='다음 10페이지' ><img src='images/common/btn_next.gif' align='absmiddle' border='0' class='img' /></a>\r\n"  ;
	final String lastHtml = "<a href='javascript:searchPage(\"#\");' class='last' title='마지막 페이지'><img src='images/common/btn_last.gif' align='absmiddle' border='0' class='img' /></a>\r\n"  ;
	
	int perPage = 10;		// 한페이지에 보여줄 게시물 수
	int listPage = 1;		// 페이징부분에 보여줄 한페이지당 최대 페이지 수 (<< < 1 2 3 4 5 6 7 8 9 10 > >>)' 

	int currentPage= 0 ;		//시작 글 번호 
	int startRow= 0 ;		//시작 글 번호 
	int endRow= 0 ;			//시작 글 번호 
	int totalCount = 0; 	//
	int totalPage = 0 ;   //전체 페이지 수
	
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public PageNavigation(int currentPage){
		init(currentPage);  
	}
	
	public PageNavigation(int perPage , int listPage , int currentPage){
		this.perPage = perPage ;
		this.listPage = listPage ;
		init(currentPage);  
	}
	
	private void init(int currentPage){
		this.currentPage = currentPage; 
		
		startRow =  (currentPage-1)*perPage ; 
		endRow = currentPage*perPage ; 
	}
	 

	public String getPageHtml(){		
		if(totalCount == 0) return "";
		StringBuffer buffer= new StringBuffer();
		  
		int currentFirst = (currentPage - 1) / listPage; // 현재 페이지 에서 첫번째 페이지 번호 구하기
		currentFirst = currentFirst * listPage + 1;
		
		int currentlast = (currentPage - 1) / listPage;	//  현재 페이지 에서 마지막 페이지 번호 구하기
		currentlast = currentlast * listPage + listPage;
			
		int nextFirst = (currentPage - 1)/listPage; // 현재 페이지 에서 다음 블럭 페이지 번호 구하기
		nextFirst = (nextFirst+1) * listPage + 1;
		
		int prevLast = (currentPage - 1)/listPage; // 현재 페이지 에서 이전 블럭 페이지 번호 구하기
		prevLast = (prevLast-1) * listPage + listPage;
		
		int lastPage = 1;											
		lastPage = totalCount / perPage;
		
		if(totalCount%perPage != 0) lastPage = lastPage + 1;
		currentlast = (currentlast > lastPage) ? lastPage : currentlast;
			
		if(currentPage > 1) buffer.append( firstHtml );
		
		if(prevLast > 0)
			buffer.append( StringUtils.replace(prevHtml,"#", String.valueOf(prevLast)));
		
		for (int j=currentFirst; j<currentFirst+listPage && j<=lastPage; j++) {	
			if ( j <= currentlast ) {
				if ( j == currentPage ) {
					buffer.append( StringUtils.replace(nowHtml,"#", String.valueOf(j)));
				} else {
					buffer.append( StringUtils.replace(pageHtml,"#", String.valueOf(j)));
				}
			} 
		}	
									 
		if(nextFirst > lastPage) nextFirst = lastPage;
		
		if(currentlast < totalPage)
			buffer.append( StringUtils.replace(nextHtml,"#", String.valueOf(nextFirst)));
		
		if(currentPage < lastPage)
			buffer.append( StringUtils.replace(lastHtml,"#", String.valueOf(lastPage)));

		return buffer.toString() ;
	}
	
	public int getStartRow() {
		return startRow;
	} 

	public int getEndRow() {
		return endRow;
	} 
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount; 
		totalPage = totalCount / perPage;
		if ( totalCount%perPage != 0 ) totalPage = totalPage += 1; 
	}	
	
	//게시물의 현재 게시 번호
	public int getListIndex(int index) {
		return totalCount - perPage*(currentPage-1) - index ;
	}
}
