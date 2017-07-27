package com.invoicing.manage.util;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.text.StringCharacterIterator;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * Utility class for string-related processing.
 * @author yaofeng
 */
public class StringUtil {
    
	/** 
     * @fun 验证手机号验证 
     * @author yaofeng
     * @date 2014-11-21 
     * @param  str 
     * @return 验证通过返回true 
     */  
    public static boolean isMobile(String str) {   
        Pattern p = null;  
        Matcher m = null;  
        boolean b = false;   
        p = Pattern.compile("^[1][3,4,5,8][0-9]{9}$"); // 验证手机号  
        m = p.matcher(str);  
        b = m.matches();   
        return b;  
    }  
    
    /**
     * @fun 验证是不是数字(没有小数点)
     * @author yaofeng
     * @date 2014-11-21 
     * @param number
     * @return
     */
    public static boolean isInteger(String number) {
    	boolean b = false;
    	Pattern p = Pattern.compile("^[0-9]*$");
    	Matcher m = p.matcher(number);
    	b = m.find();
       return b;
    }
    
    /**
     * @fun 验证金额
     * @author yaofeng
     * @date 2014-11-21 
     * @param str
     * @return
     */
    public static boolean isNumber(String str) { 
        java.util.regex.Pattern pattern=java.util.regex.Pattern.compile("^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){0,2})?$"); // 判断小数点后一位的数字的正则表达式
        java.util.regex.Matcher match=pattern.matcher(str); 
        if(match.matches()==false) { 
           return false; 
        } else{ 
           return true; 
        } 
    }
    
	/**
	 * @功能 去除编号前的0
	 * @param s
	 * @return
	 */
	public static String RemovalZero(String s) {
		if(isEmpty(s)) {
			return "";
		}
		String str=s.substring(5,9);
		return String.valueOf(Integer.parseInt(str));
	}
	
	/**
	 * The string is empty if it is null or contains only space (both
	 * single-byte and double-byte space counts).
	 * @param str The string to be tested
	 * @return true if the string is empty
	 */
	public static boolean isEmpty(String str) {
		if ((str == null) || trim(str).equals("")) {
			return true;
		}
		return false;
	}

	/**
	 * The string is not empty if it is not null or contains some char.
	 * @param str The string to be tested
	 * @return true if the string is empty
	 */
	public static boolean isNotEmpty(String str) {
		if ((str == null) || trim(str).equals("")) {
			return false;
		}
		return true;
	}

	/**
	 * The object is empty if it is null or contains only space (both
	 * single-byte and double-byte space counts).
	 * @param obj The Object to be tested
	 * @return true if the Object is empty
	 */
	public static boolean isEmpty(Object obj) {
		if ((null == obj) || obj.equals("")) {
			return true;
		}
		return false;
	}

	/**
	 * To delete the space on beginning and end of the string. Both single-byte
	 * and double-byte space will be deleted.
	 * @param str String
	 * @return trimed string
	 */
	public static String trim(String str) {
		if ((str == null) || str.trim().equals("")) {
			return "";
		}

		String newStr = str.trim();
		boolean startFull = newStr.startsWith("��??"); // 12288
		boolean endFull = newStr.endsWith("��??"); // 12288
		boolean startHalf = newStr.startsWith(" "); // 97
		boolean endHalf = newStr.endsWith(" "); // 97

		while (startFull || endFull || startHalf || endHalf) {
			startFull = newStr.startsWith("��??"); // 12288
			endFull = newStr.endsWith("��??"); // 12288

			if (startFull) {
				if (newStr.length() == 1) {
					return "";
				}

				newStr = newStr.substring(1);
			}

			if (endFull) {
				if (newStr.length() == 1) {
					return "";
				}

				newStr = newStr.substring(0, newStr.length() - 1);
			}

			startHalf = newStr.startsWith(" "); // 97
			endHalf = newStr.endsWith(" "); // 97

			if (startHalf) {
				newStr = newStr.substring(1);
			}

			if (endHalf) {
				newStr = newStr.substring(0, newStr.length() - 1);
			}
		}

		return newStr;
	}

	/**
	 * <>&"'\��G�X�P�[�v����
	 * @param aTarget �Ώۂ̕�����
	 * @return �G�X�P�[�v��̕�����?

	 */
	public static String escapeHTMLTag(String aTarget) {
		final StringBuffer result = new StringBuffer();

		final StringCharacterIterator iterator = new StringCharacterIterator(
				aTarget);
		char character = iterator.current();
		while (character != StringCharacterIterator.DONE) {
			if (character == '<') {
				result.append("&lt;");
			} else if (character == '>') {
				result.append("&gt;");
			} else if (character == ' ') {
				result.append("&nbsp;");
			} else if (character == '\"') {
				result.append("&quot;");
			} else if (character == '&') {
				result.append("&amp;");
			} else if (character == '/') {
				result.append("&#47;");
			} else if (character == '\\') {
				result.append("&#092;");
			} else if (character == '\n') {
				result.append("<br>");
			} else if (character == '\'') {
				result.append("&#039;");
			} else {
				result.append(character);
			}
			character = iterator.next();
		}
		return result.toString();
	}

	private static char win2JavaChar(char c) {
		char rtnC_ = c;

		switch (c) {
		// case 0xff0d:// MINUS SIGN -->
		// rtnC_ = 0x2212;// MINUS SIGN
		// break;
		// case 0x2225:// PARALLELTO -->
		// rtnC_ = 0x2016;// DOUBLE VERTICAL LINE
		// break;
		// case 0xffe2:// FULLWIDTH NOT SIGN -->
		// rtnC_ = 0x00ac;// NOT SIGN
		// break;
		// case 0xffe1:// FULLWIDTH POUND SIGN -->
		// rtnC_ = 0x00a3;// POUND SIGN
		// break;
		// case 0xffe0:// FULLWIDTH C GN -->
		// rtnC_ = 0x00a2;// CENT SIGN
		// break;
		// case 0x9ad9: //\uFFFD�\uFFFD�\uFFFD
		// rtnC_ = 0x9ad8;
		// break;
		// case 0xfa11: //\uFFFD�\uFFFDè
		// rtnC_ = 0x5d0e;
		// break;
		// case 0xf9dc: //\uFFFD�\uFFFD—�?

		// rtnC_ = 0x9686;
		// break;
		case 0x301c: // FULL WIDTH TILDE --> �\u301C modify by tokyo on
			// 2002/09/17
			rtnC_ = 0xff5e; // WAVE DASH

			break;
		}

		return rtnC_;
	}

	public static String win2JavaString(String unicode) {
		if (unicode == null) {
			return null;
		}

		StringBuffer bf_ = new StringBuffer();

		for (int i = 0; i < unicode.length(); i++) {
			bf_.append(win2JavaChar(unicode.charAt(i)));
		}

		return new String(bf_);
	}

	/**
	 * PAD THE LETTER ACCORDING BY LENGTH
	 * @param str
	 * @param length
	 * @param padStr
	 * @return String
	 */
	public static String lpad(String str, String length, String padStr) {
		String tmpStr = "";
		int i = 0;
		if (str.length() >= Integer.parseInt(length)) {
			return str;
		} else {
			while (Integer.parseInt(length) - str.length() - i > 0) {
				tmpStr = tmpStr + padStr;
				i++;
			}
			tmpStr = tmpStr + str;
			return tmpStr;
		}
	}

	/**
	 * CONVERT JAVA.SQL.DATE TYPE INTO STRING TYPE
	 * @param yearmm
	 * @param padStr
	 * @return String
	 */
	public static String format2Date(String yearmm, String padStr) {
		return format2Date(yearmm, padStr, true);
	}

	/**
	 * CONVERT JAVA.SQL.DATE TYPE INTO STRING TYPE
	 * @param yearmm
	 * @param padStr
	 * @return String
	 */
	public static String format2Date(String yearmm, String padStr, boolean fg) {
		StringBuffer date = new StringBuffer(64);
		if (fg && padStr == "-")
			padStr = "/";
		if ((yearmm != null && !yearmm.equals(""))) {
			if (yearmm.length() > 9) {
				String startY = yearmm.substring(0, 4);
				String startM = yearmm.substring(5, 7);
				String startD = yearmm.substring(8, 10);
				date.append(startY);
				date.append(padStr);
				date.append(startM);
				date.append(padStr);
				date.append(startD);
				return date.toString();
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	/**
	 * CONVERT JAVA.SQL.DATE TYPE INTO STRING TYPE
	 * @param date java.sql.Date yyyy-mm-dd
	 * @return String ex:yyyy/mm/dd
	 */
	public static String format2Time(String time, String padStr) {
		String tim = time.substring(0, time.indexOf("."));

		return tim.replaceAll("-", padStr);
	}

	/**
	 * Check if the param includes SBC case.
	 * @param obj String
	 * @return boolean
	 */
	public static boolean checkChar(String obj) {
		boolean includeSBC = false;

		if ((obj == null) || obj.trim().equals("")) {
			includeSBC = false;
		}

		int strLength = obj.trim().length();

		for (int i = 0; i < strLength; i++) {
			if (obj.charAt(i) > 255) {
				includeSBC = true;
			}
		}

		return includeSBC;
	}

	/**
	 * get the param length of byte .
	 * @param obj String
	 * @return int
	 */
	public static int getSize(String obj) {
		if ((obj == null) || obj.trim().equals("")) {
			return 0;
		}

		byte[] bt = obj.trim().getBytes();

		return bt.length;
	}

	/**
	 * set the return value "" when the param is null
	 * @param strInput String
	 * @return String
	 */
	public static String filterNull(String strInput) {
		if (strInput == null || strInput.trim().equals("")) {
			return "";
		} else {
			return strInput;
		}
	}

	/**
	 * checkResult
	 * @param result int
	 * @return String
	 */
	public static String checkResult(int result) {
		String error = "s";
		if (result == 0) {
			error = "f";
		}
		if (result == 1) {
			error = "s";
		}
		return error;
	}

	/**
	 * SQL Keyword Filtration
	 * @param st
	 * @return
	 */
	public static String reSingleQuotes(String st) {
		String newStr = trim(st);
		return newStr.replace("'", "''");
	}

	/**
	 * get subString of String.if it's length greate or equals the given length,then return String,
	 * if less the given length,then return subString(0,sublen) and add '...'.
	 * @param str String
	 * @param sublen int
	 * @return substring
	 */
	public static String subString(String str, int sublen) {
		if ((str == null) || trim(str).equals("")) {
			return "";
		}
		if (str.length() <= sublen) {
			return str;
		} else {
			return str.substring(0, sublen) + "...";
		}
	}

	/**
	 * return the truncated string. <br>
	 * @param str
	 * @param offset
	 * @return String
	 */
	public static String subStringByte(String str, int offset) {
		if (str.getBytes().length > offset) {
			return subStringByte(str, 0, offset) + "...";
		}
		return str;
	}

	/**
	 * return the truncated string by byte position and offset. <br>
	 * @param str
	 * @param position
	 * @param offset
	 * @return String
	 */
	public static String subStringByte(String str, int position, int offset) {
		if (StringUtil.isEmpty(str) || position < 0 || offset < 1)
			return null;

		int beginIndex = countNeedLength(str, position);
		int endIndex = countNeedLength(str, position + offset);
		byte[] arr = new byte[endIndex - beginIndex];
		System.arraycopy(str.getBytes(), beginIndex, arr, 0, arr.length);
		return new String(arr);
	}

	/**
	 * return actual needed length for subStringByte. <br>
	 * @param str
	 * @param length
	 * @return int
	 */
	private static int countNeedLength(String str, int length) {
		if (str == null || "".equals(str) || length < 1) {
			return 0;
		}
		char c[] = str.toCharArray();
		int needLength = 0;
		if (length == 1) {
			if (isDBCChar(c[0])) {
				needLength = 1;
			}
		} else {
			for (int i = 0; i < c.length; i++) {
				if (isDBCChar(c[i])) {
					needLength++;
				} else {
					needLength += 2;
				}
				if (needLength > length - 2) {
					if (needLength == length - 1 && c.length > i + 1
							&& isDBCChar(c[i + 1])) {
						needLength++;
					}
					break;
				}
			}
		}

		int actualLength = byteLength(str);
		if (needLength > actualLength) {
			return actualLength;
		}

		return needLength;
	}

	/**
	 * return the length of string. <br>
	 * @param str
	 * @return int
	 */
	public static int byteLength(String str) {
		if (str == null || "".equals(str))
			return 0;
		return str.getBytes().length;
	}

	/**
	 * judge the char is or not a DBC char. <br>
	 * @param c
	 * @return boolean
	 */
	public static boolean isDBCChar(char c) {
		return String.valueOf(c).getBytes().length == 1;
	}

	public static String formatDate(Date date, String pattern) {
		Format format = new SimpleDateFormat(pattern);
		return format.format(date);
	}

	public static String formatDateYyyyMmDdH24MISS(Date date) {
		return formatDate(date, "yyyy-MM-dd HH:mm:ss");
	}

	public static String formatDateH24MISS(Date date) {
		return formatDate(date, "HH:mm:ss");
	}

	public static String formatYYYYMMDD(Date date) {
		return formatDate(date, "yyyy-MM-dd");
	}

	/**
	 * 两个字的人名中间添加全角空格:ex:中国--> 中�??�?
	 * @param strInput String
	 * @return String
	 */
	public static String insertSpace(String strInput, String rtnResult) {
		String result = rtnResult;
		if (!isNotEmpty(strInput)) {
			return "�?�?�?";
		} else {
			if (strInput.indexOf(",") > 0) {
				String[] strArr = strInput.split(",");
				for (String tempStr : strArr) {
					result += insertSpace(tempStr, result) + ",";
				}
			} else if (strInput.indexOf(",") < 0 && strInput.length() == 2) {
				result = String.valueOf(strInput.charAt(0));
				result += "�?";
				result = result + String.valueOf(strInput.charAt(1));
			} else {
				result = strInput;
			}
		}
		if (result.lastIndexOf(",") > 0) {
			result = result.substring(0, result.lastIndexOf(","));
		}
		return result;
	}

	/**
	 * format string,put prefix before strInput.
	 * @param strInput input string
	 * @param prefix fill char
	 * @param length >0
	 * @return String
	 */
	public static String stringFormat(String strInput, String prefix, int length) {
		String strResult = "";
		if (isNotEmpty(strInput) && prefix != null && length > 0) {
			strResult = strInput.trim();
			while (strResult.length() < length) {
				strResult = prefix + strResult;
			}
		}
		return strResult;
	}
	
	/**
	 * produce log file name
	 * @param inputFileName eg:续报{0}
	 * @param startExpress
	 * @param endExpress
	 * @param replaceStr eg:�?
	 * @return eg:续报�?
	 */
	public static String produceString(String inputStr,
			String startExpress, String endExpress, String replaceStr) {
		String fileName = "";
		if (!StringUtil.isEmpty(inputStr)) {
			int idxStart = inputStr.indexOf(startExpress);
			String prex = "";
			String end = "";
			// process "{"
			if (idxStart > 0) {
				prex = inputStr.substring(0, idxStart);
			}

			int idxEnd = inputStr.indexOf(endExpress);
			if (idxEnd > 0) {
				end = inputStr.substring(idxEnd + 1);
			}

			fileName = prex + replaceStr + end;
		}
		return fileName;
	}
	
	/**
	 * 去除字符串中的空�?
	 * @param source String类型 源数�?
	 * @return 
	 */
	public static String delBlankChar(String source){
		while (source.indexOf("�?") != -1) {
			int position = source.indexOf("�?");
			String prefix = source.substring(0, position);
			String tail = source.substring(position + 1, source.length());
			source = prefix + tail;
		}
		return source;
	}
	
	/**
	 * 功能  过滤sql中出现单引号现象（处理特殊字符）
	 * @param strValue
	 * @return
	 */
	public static String encodeForSql(String strValue) {
        try {
            if (strValue == null) {
                return null;
            } 
            
            String strSrc = strValue.trim();
            String strTemp = "";

            for (int k = 0; k < strSrc.length(); k++) {
                char chrTemp = strSrc.charAt(k);
                if (chrTemp == '\'') {
                    strTemp += "\'\'";
                } else {
                    strTemp += chrTemp;
                }
            }
            
            return strTemp;
        } catch (Exception ex) {
           ex.printStackTrace();
        }
        return null;
    }	

	/**
	 * @fun 判断数组中的字符是否存在于传入的字符串中
	 * @param strArray
	 * @param str
	 * @return
	 */
	public static boolean strIsExistStr2(String str,String str2) {
		boolean b = false;
		if (StringUtil.isNotEmpty(str)) {
			  if (StringUtil.isNotEmpty(str2) && (","+str2+",").indexOf(","+str+",") != -1) {
				 b=true;
			  }
		  }
		return b;
	}
	
	/**
	 * @fun 判断对象是否为空
	 * @param obj
	 * @return
	 */
	public static boolean isNull(Object obj){
		boolean b = false;
	    if (null == obj) {
		   b=true;
	    }
		return b;
	}
	
	/**
	 * @fun 判断对象是否为空
	 * @param obj
	 * @return
	 */
	public static boolean isNotNull(Object obj){
		boolean b = false;
	    if (null != obj) {
		   b=true;
	    }
		return b;
	}
	
    public static String changeToHtml(String str)
    {
        String html = null;
        if(str != null)
            html = str.replaceAll("\r\n", "<br/>");
        return html;
    }	
    
    public static void main(String[] args) {
//    	System.out.println(stringFormat("1","0",4));
    	System.out.println("1111=="+isInteger("123789w2"));
	}
}