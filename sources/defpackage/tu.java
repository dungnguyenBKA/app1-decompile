package defpackage;

import defpackage.cv;

/* access modifiers changed from: package-private */
/* renamed from: tu  reason: default package */
public final /* synthetic */ class tu implements cv.d {
    private final iv a;

    private tu(iv ivVar) {
        this.a = ivVar;
    }

    public static cv.d b(iv ivVar) {
        return new tu(ivVar);
    }

    @Override // defpackage.cv.d
    public Object a() {
        return this.a.getWritableDatabase();
    }
}
