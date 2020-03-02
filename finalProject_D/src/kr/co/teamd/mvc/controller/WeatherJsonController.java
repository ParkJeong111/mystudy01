package kr.co.teamd.mvc.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
//권세진, 오재민
@RestController
public class WeatherJsonController {
	@RequestMapping("/weather")
	@ResponseBody
	public ResponseEntity<String> weather(String x, String y) throws Exception {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd/HHmm");
		Date d = new Date();
		String date = simpleDateFormat.format(d);
		String[] daytime = date.split("/");
		String apiUrl = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst";
		// 개인 서비스 키
		String serviceKey = "k%2FgUSHQJuaYMDfjt6OmrNNn1M7ysW%2BF%2B%2F851%2FnPWKtTzEOnG%2B9MW5gzLh6HZoGuszy6rSj1Zmicl%2BjHfozqdnA%3D%3D";

		// nx: 위도, ny: 경도
		String nx;
		String ny;
			nx = x;
			ny = y;


		System.out.println(nx);
		System.out.println(ny);
		// 관측 날짜
		String baseDate = daytime[0];

		// 관측 시간
		int baseTime_int = Integer.parseInt(daytime[1]);
		String dataType = "json";

		// basetime 0200, 0500, 0800, 1400, 1700, 2000, 2300
		String baseTime;
		if (baseTime_int < 500 && baseTime_int > 201) {
			baseTime = "0200";
		} else if (baseTime_int < 800 && baseTime_int > 501) {
			baseTime = "0500";
		} else if (baseTime_int < 1400 && baseTime_int > 801) {
			baseTime = "0800";
		} else if (baseTime_int < 1700 && baseTime_int > 1401) {
			baseTime = "1400";
		} else if (baseTime_int < 2000 && baseTime_int > 1701) {
			baseTime = "1700";
		} else if (baseTime_int < 2300 && baseTime_int > 2001) {
			baseTime = "2000";
		} else {
			baseTime = "2300";
		}

		StringBuilder urlBuilder = new StringBuilder(apiUrl);
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "EUC-KR") + "=" + serviceKey);
		urlBuilder.append("&" + URLEncoder.encode("pageNo", "EUC-KR") + "=" + URLEncoder.encode("1", "EUC-KR"));        // 페이지
																													    // 번호
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "EUC-KR") + "=" + URLEncoder.encode("10", "EUC-KR"));    // 결과
																														// 수
		urlBuilder.append("&" + URLEncoder.encode("dataType", "EUC-KR") + "=" + URLEncoder.encode(dataType, "EUC-KR")); // 데이터
																														// 타입
		urlBuilder.append("&" + URLEncoder.encode("base_date", "EUC-KR") + "=" + URLEncoder.encode(baseDate, "EUC-KR"));// 관측
																														// 날짜
		urlBuilder.append("&" + URLEncoder.encode("base_time", "EUC-KR") + "=" + URLEncoder.encode(baseTime, "EUC-KR"));// 관측
																														// 시간
																														// AM
																														// 02시부터
																														// 3시간
																														// 단위
		urlBuilder.append("&" + URLEncoder.encode("nx", "EUC-KR") + "=" + URLEncoder.encode(nx, "EUC-KR"));
		urlBuilder.append("&" + URLEncoder.encode("ny", "EUC-KR") + "=" + URLEncoder.encode(ny, "EUC-KR"));

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");

		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}

		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		String result = sb.toString();

		return new ResponseEntity<>(result, HttpStatus.OK);
	}
}
