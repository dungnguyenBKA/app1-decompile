package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.camerasideas.collagemaker.appdata.b;
import com.camerasideas.collagemaker.appdata.f;
import java.io.Serializable;
import java.util.List;
import org.apache.http.HttpHost;

/* renamed from: fq  reason: default package */
public class fq implements Serializable {
    public int b;
    public int c;
    public int d;
    public boolean e;
    public int f;
    public boolean g;
    public String h;
    public String i;
    public String j;
    public String k;
    private List<String> l;
    private List<String> m;

    public static String a(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) ? str : ic.l(new StringBuilder(), b.a, str);
    }

    public boolean b(Context context) {
        String string = f.g(context).getString("CountryCode", "US");
        List<String> list = this.m;
        if (list == null || list.size() <= 0) {
            List<String> list2 = this.l;
            if (list2 != null && list2.size() > 0) {
                for (String str : this.l) {
                    if (string.equalsIgnoreCase(str)) {
                        return true;
                    }
                }
                return false;
            }
        } else {
            for (String str2 : this.m) {
                if (string.equalsIgnoreCase(str2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public void c(List<String> list) {
        this.m = list;
    }

    public void d(List<String> list) {
        this.l = list;
    }
}
