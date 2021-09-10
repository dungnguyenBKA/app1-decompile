package androidx.core.app;

import android.app.Notification;

public class f extends h {
    private CharSequence b;

    @Override // androidx.core.app.h
    public void a(d dVar) {
        new Notification.BigTextStyle(((i) dVar).b()).setBigContentTitle(null).bigText(this.b);
    }

    public f b(CharSequence charSequence) {
        this.b = g.b(charSequence);
        return this;
    }
}
