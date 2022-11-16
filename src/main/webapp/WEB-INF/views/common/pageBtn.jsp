<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<div div="row">
	<ul class="pagination pagination-lg justify-content-end">
		<li class="page-item" id="hasPrev" style="display: none;"><a
			class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
			href="/board/boardList?boardId=${boardId}&page=${startPage-2}"><</a>
		</li>
		<c:forEach var="i" begin="${startPage}" end="${endPage }">
			<c:if test="${i == currPage+1}">
				<li class="page-item disabled"><a
					class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0"
					href="/board/boardList?boardId=${boardId}&page=${i-1}">${i}</a></li>
			</c:if>
			<c:if test="${i != currPage+1}">
				<li class="page-item"><a
					class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
					href="/board/boardList?boardId=${boardId}&page=${i-1}">${i}</a></li>
			</c:if>
		</c:forEach>
		<li class="page-item" id="hasNext" style="display: none;"><a
			class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
			href="/board/boardList?boardId=${boardId}&page=${endPage}">></a></li>
	</ul>
</div>