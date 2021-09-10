package defpackage;

import defpackage.cv;

/* access modifiers changed from: package-private */
/* renamed from: wu  reason: default package */
public final /* synthetic */ class wu implements cv.b {
    private static final wu a = new wu();

    private wu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        int i = cv.g;
        throw new kv("Timed out while trying to open db.", (Throwable) obj);
    }
}
