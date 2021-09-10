package defpackage;

import defpackage.cv;

/* renamed from: su  reason: default package */
final /* synthetic */ class su implements cv.b {
    private static final su a = new su();

    private su() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        int i = cv.g;
        throw new kv("Timed out while trying to acquire the lock.", (Throwable) obj);
    }
}
