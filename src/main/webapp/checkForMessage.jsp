<div class="bg-light">
    <c:if test="${not empty message}">
        <h4 class="text-center text-success">${message}</h4>
    </c:if>

    <c:if test="${not empty error}">
        <h4 class="text-center text-success">${error}</h4>
    </c:if>

    <c:if test="${not empty success}">
        <h4 class="text-center text-success">${success}</h4>
    </c:if>
</div>