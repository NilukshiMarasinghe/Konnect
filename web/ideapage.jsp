<%-- 
    Document   : ideapage
    Created on : Jul 1, 2018, 6:16:40 PM
    Author     : Saroj
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.projectbean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Company_header.jsp" />
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
                            <li class="nav-item active">
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
                             <li class="nav-item ">
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
        <section id="content-3-6" class="content-block content-3-6" wp-cz-section="blocks_content_3_6" wp-cz-section-title="Content 3-6" wp-cz-control="blocks_content_3_6_source" wp-cz-control-label="Content source" wp-cz-control-type="custom" wp-cz-control-type-custom="WP_BlocksContentDropdown_Customize_Control" wp-cz-control-section="blocks_content_3_6">
            <div class="container">
                <div class="row">
                    <!-- Feature Box 1 -->
                    <%
                        ArrayList<projectbean> posts = (ArrayList<projectbean>) request.getAttribute("progects");
                        for (projectbean post : posts) {
                    %>
                    <div class="col-sm-4 col-xs-12" style="background-color: white;" wp-loop="blocks" wp-loop-post_parent="get_theme_mod('blocks_content_3_6_source')" wp-loop-post-type-custom="blocks_content" wp-loop-post-status="publish" wp-loop-nopaging="true" wp-loop-order="ASC" wp-loop-orderby="menu_order" wp-loop-clear-columns>
                        <div class="feature-box">
                            <div class="icon">
                                <span class="fa fa-pencil" wp-meta-value wp-meta-value-key="icon" wp-meta-value-set="attr" wp-meta-value-set-attr="class" wp-meta-value-set-attr-append="true" wp-remove-class="fa-pencil"></span>
                            </div>
                            <h3 wp-the-title>Idea Number : <%=post.getProgid()%></h3>
                            <h3 wp-the-title>Idea Name : <%=post.getName()%></h3>
                            <h3 wp-the-title>Idea Type : <%=post.getType()%></h3>
                            <h3 wp-the-title>Description : <%=post.getDescription()%></h3>
                            <h3 wp-the-title>User ID : <%=post.getUid()%></h3>


                        </div>
                    </div>
                    <!-- Feature Box 2 -->
                    <!-- Feature Box 3 -->
                    <%}%>
                </div>
                <!-- Row Ends -->
            </div>
           
            <!-- Container Ends -->
        </section>
       
        <section class="hero" wp-cz-control="blocks_header_3_bck" wp-cz-control-label="Background image" wp-cz-control-type="media" wp-cz-control-mime-type="image" wp-cz-control-section="blocks_header_3" wp-attachment-bck wp-attachment-bck-theme-mod="blocks_header_3_bck" wp-attachment-bck-size="large">
                    <div class="container">
                        <div class="brand">
                            <a href="#" wp-href="url"></a>
                        </div>
                        <div class="navicon">
                        </div>
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="editContent">
                                <h1 wp-cz-control="blocks_header_3_title" wp-cz-control-label="Title" wp-cz-control-section="blocks_header_3" wp-cz-theme-mod="blocks_header_3_title">Sponsor</h1>
                            </div>
                            <div class="editContent">
                                <p class="lead" wp-cz-control="blocks_header_3_text" wp-cz-control-label="Text" wp-cz-control-type="textarea" wp-cz-control-section="blocks_header_3" wp-cz-theme-mod="blocks_header_3_text">Sponsor to ideas</p>
                                <form role="form" action="sonsor_control" method="POST"> 
                                    <div class="form-group" data-pg-collapsed> 
                                        <label class="control-label" for="formInput44">Idea Number</label>     

                                        <select name="progid" id="formInput44" class="form-control"> 
                                            <%
                                                ArrayList<projectbean> posts1 = (ArrayList<projectbean>) request.getAttribute("progects");
                                                for (projectbean post1 : posts1) {
                                            %>
                                            <option><%=post1.getProgid()%></option>         
                                            <%}%>
                                        </select>
                                    </div>


                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputEmail1">How much capital are you sponsoring</label>                                     
                                        <input type="number" name="money" class="form-control" id="exampleInputEmail1" placeholder="amount of money" required="required"> 
                                    </div>                                 

                                    <div class="form-group" data-pg-collapsed> 
                                        <label class="control-label" for="formInput26">Description</label>     

                                        <textarea name="desc" class="form-control" rows="3" id="formInput26" placeholder="decription of your kind sponsoring" required="required"></textarea>
                                    </div>

                                    <button type="submit" class="btn btn-info">Sponsor</button>                                 
                                </form>
                            </div>
                        </div>
                    </div>
                  
                </section>
        <%= request.getParameter("message")%>
    </div>
</body>
</html>
