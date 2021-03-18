<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <h2>LabPal</h2>


        <header class="hero-image container-fluid">
            <div class="hero-text">
                <h1>Lab Pal</h1>
                <p>Offering application solutions for managing your laboratory testing services.</p>
                <button>Sign Up</button>
            </div>
        </header>

        <!-- Main Content -->
        <main>
            <h1>Capt. Marvel and the Ghost of the Deep</h1>
            <section class="row">
                <div class="col-sm-9">
                    <div class="row">
                        <img src="images/gp_panel01.png" class="panel size1 col-sm-11" alt="" />
                        <div class="col-sm-1 d-flex justify-content-center align-items-center">
                            <a href="#"><img src="images/gp_next.png" alt="next" /></a>
                        </div>
                    </div>
                </div>

                <article class="col-sm-3">
                    <h2>Fawcett Comics</h2>
                    <p>One of the most successful comic book publisher in the 1940's, Fawcett Publications
                        began in 1919 with the magazine, <cite>Captain Billy's Whiz Bang</cite>. Its total
                        circulation from all of its publications eventually reached over 10 million issues
                        a month.</p>
                    <p>Fawcett is best known for its popular superhero, Captain Marvel, based on the
                        adventures of radio reporter Billy Batson who would turn into Captain Marvel
                        upon uttering the word <em>Shazam!</em>. Other successful characters include
                        Ibis the Invincible, Hopalong Cassidy, and Mister Scarlet. Fawcett was also known
                        for its series of horror comics including <cite>Beware! Terror Tales</cite>,
                        <cite>Worlds of Fear</cite>, and <cite>Strange Suspense Stories</cite>. The
                        company branched out into humor comic magazines with <cite>Otis and Babs</cite>
                        and <cite>Hoppy the Marvel Bunny</cite> among its most popular titles.</p>
                    <p>Facing declining sales, Fawcett Comics ceased publication of its superhero
                        titles in 1953. Several of its titles were eventually sold to Charlton
                        Comics.</p>
                </article>
            </section>
        </main>

        <a href="search.jsp">Click here to search for users (admin only)</a>
        <a href="adminOnly/adminSearch.jsp">Click here search in admin directory</a>
        <jsp:include page="footer.jsp" />
    </body>
</html>

