package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.appdata.b;

/* renamed from: dq  reason: default package */
public class dq {
    public static final String a = ic.l(new StringBuilder(), b.a, "bgeraser/update_config.json");
    public static final String b = ic.l(new StringBuilder(), b.a, "bgeraser/bg/android_bg_packs.json");
    public static final String c = ic.l(new StringBuilder(), b.a, "bgeraser/font/android_font_packs.json");
    public static final String d = ic.l(new StringBuilder(), b.a, "bgeraser/shape/android_shape_packs.json");
    public static String e;

    public static void a(Context context) {
        if (TextUtils.isEmpty(e) && context != null && context.getExternalFilesDir("") != null) {
            e = context.getExternalFilesDir("").getAbsolutePath();
        }
    }

    public static String b(String str) {
        a(CollageMakerApplication.b());
        return ic.n(new StringBuilder(), e, "/.cutoutbg/", str);
    }

    public static String c(String str) {
        a(CollageMakerApplication.b());
        return ic.n(new StringBuilder(), e, "/.font/", str);
    }

    public static String d(String str) {
        a(CollageMakerApplication.b());
        return ic.n(new StringBuilder(), e, "/.shape/", str);
    }

    public static void e(Context context) {
        if (context.getExternalFilesDir("") != null) {
            e = context.getExternalFilesDir("").getAbsolutePath();
        }
    }
}
