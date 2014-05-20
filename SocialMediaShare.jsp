<%--

  Social Media Share component.
  Component for sharing on Facebook, Twitter and Google+
  Based on https://github.com/filamentgroup/SocialCount

  Adapted for CQ by Markus Thiel
  https://github.com/mackelito

--%>

<%@ page import="com.day.cq.wcm.api.WCMMode,
                 com.day.cq.commons.Externalizer,
                 com.day.cq.wcm.api.Page"%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>

<%-- Get the URL to the current page --%>

<%
   Externalizer externalizer = bindings.getSling().getService(Externalizer.class);
   String externalUrl = externalizer.absoluteLink(slingRequest, 
   request.getScheme(), currentPage.getPath());
%>

    <ul class="socialcount" data-url="<%= externalUrl %>.html">
        <li class="facebook">
            <a href="https://www.facebook.com/sharer/sharer.php?u=<%= externalUrl %>.html" title="Share on Facebook">
                <span class="count">Like</span>
            </a>
        </li>
        <li class="twitter">
            <a href="https://twitter.com/intent/tweet?text=<%= externalUrl %>.html" title="Share on Twitter">
                <span class="count">Tweet</span>
            </a>
        </li>
        <li class="googleplus">
            <a href="https://plus.google.com/share?url=<%= externalUrl %>.html" title="Share on Google Plus">
                <span class="count">+1</span>
            </a>
        </li>
    </ul>