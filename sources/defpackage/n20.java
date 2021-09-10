package defpackage;

import android.util.JsonReader;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: n20  reason: default package */
public final /* synthetic */ class n20 implements r20.a {
    private static final n20 a = new n20();

    private n20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        return r20.b(jsonReader);
    }
}
