package defpackage;

import android.content.Context;
import com.google.android.datatransport.cct.a;

/* renamed from: f30  reason: default package */
public class f30 {
    private static final r20 b = new r20();
    private static final String c = c("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String d = c("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");
    private static final zr<i20, byte[]> e = e30.a();
    public static final /* synthetic */ int f = 0;
    private final as<i20> a;

    f30(as<i20> asVar, zr<i20, byte[]> zrVar) {
        this.a = asVar;
    }

    public static f30 a(Context context) {
        mt.c(context);
        bs d2 = mt.a().d(new a(c, d));
        wr b2 = wr.b("json");
        zr<i20, byte[]> zrVar = e;
        return new f30(d2.a("FIREBASE_CRASHLYTICS_REPORT", i20.class, b2, zrVar), zrVar);
    }

    private static String c(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    public kw<l00> d(l00 l00) {
        i20 b2 = l00.b();
        lw lwVar = new lw();
        this.a.a(xr.d(b2), d30.b(lwVar, l00));
        return lwVar.a();
    }
}
