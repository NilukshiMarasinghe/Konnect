<%-- 
    Document   : comp_view_uni_events
    Created on : Jul 15, 2018, 12:37:39 PM
    Author     : Saroj
--%>

<%@page import="beans.unieventbean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Company_header.jsp"/>
    </head>
    <body>
         <header id="header-2" class="soft-scroll header-2" wp-cz-section="blocks_header_2" wp-cz-section-title="Header 2">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1>Konnect</h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-collapse">
                        <ul class="nav navbar-nav navbar-right" wp-nav-menu="primary" wp-nav-menu-depth="2" wp-nav-menu-type="bootstrap">
                            <li class="nav-item ">
                                <a href="index3.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="listidea">view an idea</a>
                            </li>
                            <li class="nav-item">
                                <a href="view_my_sponsored_comp">view sponsored ideas</a>
                            </li>
                            <li class="nav-item">
                                <a href="company_add_event_step_1.jsp">Create an event</a>
                            </li>
                            <li class="nav-item">
                                <a href="view_comp_idea">View my events</a>
                            </li>
                            <li class="nav-item active">
                                <a href="compviewevents">View other events</a>
                            </li>
                            <li class="nav-item">
                                <a href="clogout">logout</a>
                            </li>                            
                        </ul>
                    </div>

                </div>
                <!-- /.container-fluid -->
            </nav>
        </header>
        <br><br>
        <section class="content-block team-1 team-1-1" wp-cz-section="blocks_team_1_1" wp-cz-section-title="Team 1-1" wp-cz-control="blocks_team_1_1_source" wp-cz-control-label="Content source" wp-cz-control-type="custom" wp-cz-control-type-custom="WP_BlocksContentDropdown_Customize_Control" wp-cz-control-section="blocks_team_1_1">
            <div class="container">
                <div class="underlined-title">
                    <h1 wp-cz-control="blocks_team_1_1_title" wp-cz-control-label="Title" wp-cz-control-section="blocks_team_1_1" wp-cz-theme-mod="blocks_team_1_1_title" wp-cz-control-type="textarea">University Events</h1>
                    <hr>
                </div>
                <div class="row">

                    <%
                        ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
                        for (unieventbean post : posts) {
                    %>
                    <form action="comp_comservlet">

                        <div class="col-sm-3 team-member-wrap" wp-loop="blocks" wp-loop-clear-columns wp-loop-post_parent="get_theme_mod('blocks_team_1_1_source')" wp-loop-post-type-custom="blocks_content" wp-loop-post-status="publish" wp-loop-nopaging="true" wp-loop-order="ASC" wp-loop-orderby="menu_order">
                            <div class="team-member">
                                <img <img src="uni_images//<%= post.getSavepath()%>" class="img-responsive" alt="Member Image" wp-the-post-thumbnail="large">
                                <div class="team-details">
                                    <h4 class="member-name" wp-the-title> <%=post.getTitle()%><input type="hidden" name="evid" value="<%=post.getEid()%>" readonly="readonly" /></h4>
                                    <p class="position" wp-meta-value wp-meta-value-key="position" wp-if-get-post-meta="|position"> <%=post.getType()%></p>
                                    <p wp-the-content> Location : &nbsp;<%=post.getLocation()%></p>
                                    <p wp-the-content> Date : &nbsp;<%=post.getStartdate()%></p>
                                    <p wp-the-content> Time : &nbsp;<%=post.getStarttime()%></p>
                                    <p wp-the-content> Description : &nbsp;<%=post.getDesc()%></p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="userviewunieventscal.jsp"><button type="button" class="btn btn-info"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Calendar</button></a>
                                            <button type="submit" class="btn btn-info">comment</button>
                                        </li>

                                    </ul>
                                    <!-- /.social -->
                                </div>
                            </div>
                        </div>
                    </form>
                    <%}%>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
    </body>
</html>
