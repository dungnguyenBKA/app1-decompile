package defpackage;

import android.graphics.drawable.Drawable;

/* renamed from: ci  reason: default package */
final class ci extends ai<Drawable> {
    private ci(Drawable drawable) {
        super(drawable);
    }

    static he<Drawable> b(Drawable drawable) {
        if (drawable != null) {
            return new ci(drawable);
        }
        return null;
    }

    @Override // defpackage.he
    public void a() {
    }

    @Override // defpackage.he
    public int c() {
        return Math.max(1, this.b.getIntrinsicHeight() * this.b.getIntrinsicWidth() * 4);
    }

    /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: java.lang.Class<?>, java.lang.Class<android.graphics.drawable.Drawable> */
    @Override // defpackage.he
    public Class<Drawable> d() {
        return this.b.getClass();
    }
}
