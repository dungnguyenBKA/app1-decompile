package defpackage;

import android.content.Context;
import android.os.Build;
import com.google.ads.ADRequestList;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: hc0  reason: default package */
public class hc0 {
    private String[] a = {"loc", "tzo", "lan", "suc", "ron", "ven", "pve", "apm", "density", "manu", "extends"};
    private Context b;
    private String c = "app_name";

    public hc0(Context context) {
        this.b = context;
        this.c = context.getPackageName();
    }

    private String a(int i, String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        int i3 = cc0.t(this.b).getInt("request_version", 2);
        try {
            jSONObject.put(this.a[0], Locale.getDefault().getCountry());
            String format = new SimpleDateFormat("Z", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis()));
            if (format.startsWith("-")) {
                format = format.replace("-", ADRequestList.ORDER_NULL);
            } else if (format.startsWith("+")) {
                format = format.replace("+", "p");
            }
            jSONObject.put(this.a[1], format);
            jSONObject.put(this.a[2], Locale.getDefault().getLanguage());
            jSONObject.put(this.a[3], i);
            jSONObject.put(this.a[4], str);
            jSONObject.put(this.a[5], i2);
            jSONObject.put(this.a[6], Build.VERSION.SDK_INT);
            jSONObject.put(this.a[7], this.c);
            jSONObject.put(this.a[8], (double) this.b.getResources().getDisplayMetrics().density);
            if (i3 == 3) {
                String str2 = this.a[9];
                jSONObject.put(str2, (Build.MANUFACTURER + "").toLowerCase());
                jSONObject.put(this.a[10], cc0.t(this.b).getString("extends_request_data", ""));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("version=" + i3);
        stringBuffer.append("&data=");
        stringBuffer.append(jSONObject2);
        return stringBuffer.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x0102  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x012a  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0132 A[SYNTHETIC, Splitter:B:72:0x0132] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x013d A[Catch:{ IOException -> 0x0139 }] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0142 A[Catch:{ IOException -> 0x0139 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String b() {
        /*
        // Method dump skipped, instructions count: 332
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hc0.b():java.lang.String");
    }
}
