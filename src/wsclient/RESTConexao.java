package wsclient;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@JsonIgnoreProperties(ignoreUnknown = true)
public class RESTConexao {
	
	public List<?> getList(String url, String verboHTTP, Class<?> classe, Object body, Map<?,?> queryParams) {
		try {
			String json = getSendJson(url, verboHTTP,queryParams,body);
			if(json.equals("") || classe == null)
				return null;
			else {
				ObjectMapper objectMapper = new ObjectMapper();
				objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
				return objectMapper.readValue(json, objectMapper .getTypeFactory().constructCollectionType(List.class, Class.forName(classe.getName())));
			} 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}

	public Object getObject(String url, String verboHTTP, Class<?> classe, Object body, Map<?,?> queryParams) {
		try {
			String json = getSendJson(url, verboHTTP,queryParams,body);
			if(json.equals("")  || classe == null)
				return null;
			else {
				ObjectMapper objectMapper = new ObjectMapper();
				objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
				return objectMapper.readValue(json, objectMapper.getTypeFactory().constructType(Class.forName(classe.getName())));
			} 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	

	public String getSendJson(String url, String verboHTTP,Map<?,?> queryParams, Object body) {
		HttpURLConnection con = null;
		try {
			String fullUrl = url;
			String parteUrl = getQueryParams(queryParams);
			if(parteUrl != null)
				if(!parteUrl.equals("")) {
					fullUrl = fullUrl+"?"+parteUrl;
				}
			System.out.println(fullUrl);
	
			URL url_ = new URL(fullUrl);
			con = (HttpURLConnection) url_.openConnection();
			con.setRequestProperty("Content-Type", "application/json");
			if(verboHTTP.equals("PUT"))
				con.setRequestProperty("Accept", "application/json");
			con.setRequestMethod(verboHTTP);
			con.setConnectTimeout(25000);
			con.setReadTimeout(25000);
			
			if(body != null) {
				con.setDoOutput(true);
	            ObjectMapper mapper = new ObjectMapper();
	           mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	            String content = mapper.writeValueAsString(body);
	            System.err.println("Json gerado");
	            System.out.println(content);
	            DataOutputStream output = new DataOutputStream(con.getOutputStream());
	            output.writeBytes(content);
	            output.flush();
	            output.close();
			}
			 
			if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));

				String output = null, json = "";
				while ((output = br.readLine()) != null) {
					json+=output;
				}
				System.err.println("JSON CHEGOU ASSIM: ");
				System.out.println(json);
				return json;
			}else {
				//System.err.println(con.getResponseCode() + "   " + con.getResponseMessage());
			}
			return "";

		} catch (Exception e) {
			e.printStackTrace();
			try {
				System.err.println(con.getResponseCode() + "   " + con.getResponseMessage());
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return "";
		}finally{
			con.disconnect();
		}
	}
	
	public String getQueryParams(Map<?,?> map) throws UnsupportedEncodingException {
		if(map == null)
			return null;
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<?,?> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(String.format("%s=%s",
            		URLEncoder.encode(entry.getKey().toString(), "UTF-8"),
            		URLEncoder.encode(entry.getValue().toString(), "UTF-8")
            ));
        }
        return sb.toString();       
    }
	

}
