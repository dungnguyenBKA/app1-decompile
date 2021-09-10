package defpackage;

import android.util.JsonReader;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: k20  reason: default package */
public final /* synthetic */ class k20 implements r20.a {
    private static final k20 a = new k20();

    private k20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        return r20.h(jsonReader);
    }
}
