package defpackage;

import android.util.JsonReader;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: p20  reason: default package */
public final /* synthetic */ class p20 implements r20.a {
    private static final p20 a = new p20();

    private p20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        return r20.j(jsonReader);
    }
}
