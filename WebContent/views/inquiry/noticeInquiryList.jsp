<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 상담내역</title>

<style>
</style>
</head>
<body>
	<%@ include file="../common/mainHeader.jsp"%>
	<%@ include file="../common/mainSideBar.jsp"%>
	<%@ include file="../notice/leftCategory.jsp"%>

	<!-- 조회기간 button -->

	<tr>
		<th scope="row">기간</th>
		<td colspan="6">  <form:input path="searchDtFrom"
				cssClass="datepicker onlyDate essential"
				                   title="검색시작일" enddate="searchEndDate"
				readonly="true" /> ~                  <form:input path="searchDtTo"
				cssClass="datepicker onlyDate essential" title="검색종료일"
				 
                       startdate="searchStartDate"
				readonly="true" /> <span class="btn_pack type10"><button
					type="button" name="search" class="date_range d0">오늘</button></span> <span
			class="btn_pack type10"><button type="button" name="search"
					class="date_range d-1">어제</button></span> <span class="btn_pack type10"><button
					type="button" name="search" class="date_range d-7">1주</button></span> <span
			class="btn_pack type10"><button type="button" name="search"
					class="date_range m-1">1개월</button></span> <span class="btn_pack type10"><button
					type="button" name="search" class="date_range m-3">3개월</button></span> <span
			class="btn_pack type10"><button type="button" name="search"
					class="date_range m-6">6개월</button></span> <span class="btn_pack type10"><button
					type="button" name="search" class="date_range y-1">1년</button></span>

		</td>
	</tr>
	 
	<script>
		function dateAdd(src, field, amount) {
			if (isNaN(amount)) {
				return null;
			}

			var d = (src.getDate ? src : toDate(src, '-'));

			amount = new Number(amount);

			switch (field.toLowerCase()) {
			case 'y': {
				d.setFullYear(d.getFullYear() + amount);
				break;
			}
			case 'm': {
				d.setMonth(d.getMonth() + amount);
				break;
			}
			case 'd': {
				d.setDate(d.getDate() + amount);
				break;
			}
			default: {
				return null;
			}
			}

			var month = parseInt(d.getMonth()) + 1;
			var day = parseInt(d.getDate());

			return d.getFullYear() + '-' + (month < 10 ? '0' + month : month)
					+ '-' + (day < 10 ? '0' + day : day);
		};

		function formatDate(d, f) {
			if (!this.valueOf())
				return ' ';

			return f.replace(/(yyyy|mm|dd|hh|nn|ss|a\/p)/gi, function($1) {
				switch ($1.toLowerCase()) {
				case 'yyyy':
					return d.getFullYear();
				case 'mm':
					return (d.getMonth() + 1 < 10 ? '0' : '')
							+ (d.getMonth() + 1);
				case 'dd':
					return (d.getDate() < 10 ? '0' : '') + d.getDate();
				case 'hh':
					return (d.getHours() < 10 ? '0' : '') + d.getHours();
				case 'nn':
					return (d.geMinutes() < 10 ? '0' : '') + d.geMinutes();
				case 'ss':
					return (d.getSeconds() < 10 ? '0' : '') + d.getSeconds();
				}
			});
		};

		function toDate(dateStr, delm) {
			var year;
			var month;
			var day;

			if (delm) {
				var d = dateStr.split(delm);
				year = d[0];
				month = d[1] - 1;
				day = d[2];
			} else {
				year = dateStr.substr(0, 4);
				month = dateStr.substr(4, 2) - 1;
				day = dateStr.substr(6, 2);
			}

			return new Date(year, month, day);
		};
	</script>



	<%@ include file="../common/mainFooter.jsp"%>

</body>
</html>