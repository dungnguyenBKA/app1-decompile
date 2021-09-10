package defpackage;

import android.util.JsonReader;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: q20  reason: default package */
public final /* synthetic */ class q20 implements r20.a {
    private static final q20 a = new q20();

    private q20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        return r20.j(jsonReader);
    }
}
