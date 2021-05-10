<div class="bg-light">
    <c:if test="${not empty message}">
        <h4 class="text-center text-success bg-white">${message}</h4>
    </c:if>

    <c:if test="${not empty error}">
        <h4 class="text-center text-success bg-white">${error}</h4>
    </c:if>

    <c:if test="${not empty success}">
        <h4 class="text-center text-success bg-white">${success}</h4>
    </c:if>

    <c:if test="${not empty logout}">
        <h4 class="text-center text-success bg-white">${logout}</h4>
    </c:if>
</div>