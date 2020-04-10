package com.kh.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class EncodingFilter
 */

/*
 * 이렇게 만든 필터클래스를 적용시키는 방법
 * 1) 어노테이션을 이용한 방법
 *    > 필터 클래스 위에 @webFilter 어노테이션을 활용해서 어떤 서블릿 실행되기 전에 이 필터를 거펴갈건지 지정
 * 2) web.xml에 등록하는 방법
 *    > web.xml 파일에 이 필터클래스를 등록하고 어떤 서블릿 실행되기 전에 이 필터 거쳐갈건지 지정
 */
//@WebFilter(filterName = "encodingName", urlPatterns = "/*")   // 1)
public class EncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

	    // 요청전송방식이 post 또는 POST일 경우 인코딩 작업이 되게끔
	    if(((HttpServletRequest)request).getMethod().equalsIgnoreCase("post"))
	    {
	        
	    }
	    
	    request.setCharacterEncoding("utf-8");
	    
	    // 만약 현재 실행되는 필터가 최종 필터일 경우 Servlet을 호출하는 구문
	    // 만약 현재 실행되는 필터가 최종 필터가 아닐 경우 또다른 필터를 호출하는 구문
	    chain.doFilter(request, response);
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
