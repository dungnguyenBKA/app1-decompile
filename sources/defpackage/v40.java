package defpackage;

import android.content.Context;

/* access modifiers changed from: package-private */
/* renamed from: v40  reason: default package */
public final /* synthetic */ class v40 implements d50 {
    private final Context a;

    private v40(Context context) {
        this.a = context;
    }

    public static d50 a(Context context) {
        return new v40(context);
    }

    @Override // defpackage.d50
    public Object get() {
        Context context = this.a;
        int i = y40.c;
        return b50.a(context);
    }
}
