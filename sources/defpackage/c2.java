package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.graphics.Path;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.WindowManager;
import android.webkit.MimeTypeMap;
import com.vungle.warren.model.Advertisement;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.apache.http.cookie.ClientCookie;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: c2  reason: default package */
public class c2 {
    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                int i = em.k;
                em.o(5, "Utils", "close fail " + '\n' + Log.getStackTraceString(e));
            }
        }
    }

    public static int b(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int c(Context context, int i) {
        return (int) TypedValue.applyDimension(2, (float) i, context.getResources().getDisplayMetrics());
    }

    public static int d(Context context, float f) {
        return Math.round(f * context.getResources().getDisplayMetrics().density);
    }

    public static String e(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static String f(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    public static int g(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int h(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String j(Context context) {
        String str;
        Exception e;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            if (str != null) {
                try {
                    if (str.length() <= 0) {
                        return "";
                    }
                    return str;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    return str;
                }
            }
            return "";
        } catch (Exception e3) {
            e = e3;
            str = "";
            e.printStackTrace();
            return str;
        }
    }

    public static int k(Context context, Uri uri) {
        int lastIndexOf;
        int i;
        String str = "";
        em.h(str, "uri=" + uri);
        try {
            String type = context.getContentResolver().getType(uri);
            if (type == null) {
                String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(uri.getEncodedPath());
                if (TextUtils.isEmpty(fileExtensionFromUrl)) {
                    String encodedPath = uri.getEncodedPath();
                    if (encodedPath != null && (lastIndexOf = encodedPath.lastIndexOf(".")) > 0 && (i = lastIndexOf + 1) < encodedPath.length()) {
                        str = encodedPath.substring(i);
                    }
                    fileExtensionFromUrl = str;
                }
                if (fileExtensionFromUrl != null && (type = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl)) == null && (fileExtensionFromUrl.equalsIgnoreCase("3gp") || fileExtensionFromUrl.equalsIgnoreCase("mkv") || fileExtensionFromUrl.equalsIgnoreCase("webm") || fileExtensionFromUrl.equalsIgnoreCase("avi") || fileExtensionFromUrl.equalsIgnoreCase("mp4") || fileExtensionFromUrl.equalsIgnoreCase("rmvb") || fileExtensionFromUrl.equalsIgnoreCase("flv") || fileExtensionFromUrl.equalsIgnoreCase("mov"))) {
                    type = Advertisement.KEY_VIDEO;
                }
            }
            if (type != null) {
                if (type.startsWith("image")) {
                    return 0;
                }
                if (type.startsWith(Advertisement.KEY_VIDEO)) {
                    return 1;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static Path l(Context context, int i) {
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            String str = "";
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    if (ClientCookie.PATH_ATTR.equals(xml.getName())) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= xml.getAttributeCount()) {
                                break;
                            } else if ("pathData".equals(xml.getAttributeName(i2))) {
                                str = xml.getAttributeValue(i2);
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(str)) {
                return l1.f(str);
            }
            return null;
        } catch (IOException | NumberFormatException | XmlPullParserException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String m(Context context, int i) {
        try {
            return context.getResources().getResourceName(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Path n(String str) {
        try {
            NodeList nodeList = (NodeList) XPathFactory.newInstance().newXPath().compile("//@*").evaluate(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new File(str)), XPathConstants.NODESET);
            for (int i = 0; i < nodeList.getLength(); i++) {
                if (nodeList.item(i).getNodeName().equals("d")) {
                    return l1.f(nodeList.item(i).getTextContent());
                }
            }
            return null;
        } catch (IOException | ParserConfigurationException | XPathExpressionException | SAXException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String o(Context context) {
        Locale locale = context != null ? context.getResources().getConfiguration().locale : null;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String language = locale.getLanguage();
        if (language.equalsIgnoreCase("zh")) {
            return locale.toString();
        }
        int indexOf = language.indexOf(45);
        return indexOf != -1 ? language.substring(0, indexOf) : language;
    }

    public static String p(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.getBuffer().toString();
    }

    public static void q(Context context, String str) {
        boolean z;
        String i = ic.i("market://details?id=", str);
        String i2 = ic.i("https://play.google.com/store/apps/details?id=", str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setClassName("com.android.vending", "com.google.android.finsky.activities.MainActivity");
        intent.setData(Uri.parse(i));
        boolean z2 = false;
        try {
            context.startActivity(intent);
            z = true;
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            z = false;
        }
        if (!z) {
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setPackage("com.android.vending");
                intent2.addFlags(268435456);
                intent2.setData(Uri.parse(i));
                context.startActivity(intent2);
                z2 = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!z2) {
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(i2));
                intent3.setFlags(268435456);
                context.startActivity(intent3);
            }
        }
    }

    public static boolean r(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        try {
            int applicationEnabledSetting = context.getPackageManager().getApplicationEnabledSetting(str);
            if (applicationEnabledSetting == 0 || applicationEnabledSetting == 1) {
                return true;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean s(List<String> list) {
        for (String str : list) {
            if (u(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean t(Set<String> set) {
        for (String str : set) {
            if (u(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean u(String str) {
        return Build.MODEL.startsWith(str) || Build.DEVICE.startsWith(str);
    }

    public static boolean v(Context context) {
        return context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    public static boolean w(Context context) {
        String j = j(context);
        if (j == null || j.length() <= 1) {
            return true;
        }
        char charAt = j.charAt(j.length() - 1);
        if (charAt < '0' || charAt > '9') {
            return false;
        }
        return true;
    }

    public static int x(String str, int i) {
        int[] iArr = new int[1];
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        GLES20.glGetShaderInfoLog(glCreateShader);
        return 0;
    }
}
