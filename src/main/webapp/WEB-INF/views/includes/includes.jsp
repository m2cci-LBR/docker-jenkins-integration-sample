<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ page session="true" %>
    
    <% String locale="fr_FR" ; %>
    
<fmt:setLocale value="${locale}"/>
<fmt:bundle basename="com.mvc.stock.i18n.applicationRessources"></fmt:bundle>