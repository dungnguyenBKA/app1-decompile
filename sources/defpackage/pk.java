package defpackage;

import android.graphics.drawable.Drawable;
import org.apache.http.HttpStatus;

/* renamed from: pk  reason: default package */
public class pk implements tk<Drawable> {
    private final int a;
    private qk b;

    /* renamed from: pk$a */
    public static class a {
        public pk a() {
            return new pk(HttpStatus.SC_MULTIPLE_CHOICES, false);
        }
    }

    protected pk(int i, boolean z) {
        this.a = i;
    }

    @Override // defpackage.tk
    public sk<Drawable> a(com.bumptech.glide.load.a aVar, boolean z) {
        if (aVar == com.bumptech.glide.load.a.MEMORY_CACHE) {
            return rk.a;
        }
        if (this.b == null) {
            this.b = new qk(this.a, false);
        }
        return this.b;
    }
}
