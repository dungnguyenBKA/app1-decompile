package defpackage;

import android.content.Context;

/* renamed from: b40  reason: default package */
public class b40 {
    private final Context a;
    private boolean b = false;
    private String c;

    public b40(Context context) {
        this.a = context;
    }

    public String a() {
        String str;
        if (!this.b) {
            Context context = this.a;
            int h = sz.h(context, "com.google.firebase.crashlytics.unity_version", "string");
            if (h != 0) {
                str = context.getResources().getString(h);
                az.f().h("Unity Editor version is: " + str);
            } else {
                str = null;
            }
            this.c = str;
            this.b = true;
        }
        String str2 = this.c;
        if (str2 != null) {
            return str2;
        }
        return null;
    }
}
