package defpackage;

import android.graphics.Typeface;

/* renamed from: xx  reason: default package */
public final class xx extends by {
    private final Typeface a;
    private final a b;
    private boolean c;

    /* renamed from: xx$a */
    public interface a {
        void a(Typeface typeface);
    }

    public xx(a aVar, Typeface typeface) {
        this.a = typeface;
        this.b = aVar;
    }

    @Override // defpackage.by
    public void a(int i) {
        Typeface typeface = this.a;
        if (!this.c) {
            this.b.a(typeface);
        }
    }

    @Override // defpackage.by
    public void b(Typeface typeface, boolean z) {
        if (!this.c) {
            this.b.a(typeface);
        }
    }

    public void c() {
        this.c = true;
    }
}
