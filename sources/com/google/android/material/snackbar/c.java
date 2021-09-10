package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Objects;

class c {
    private static c c;
    private final Object a = new Object();
    private final Handler b = new Handler(Looper.getMainLooper(), new a());

    class a implements Handler.Callback {
        a() {
        }

        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            c.this.b((C0080c) message.obj);
            return true;
        }
    }

    interface b {
    }

    /* renamed from: com.google.android.material.snackbar.c$c  reason: collision with other inner class name */
    private static class C0080c {
    }

    private c() {
    }

    static c a() {
        if (c == null) {
            c = new c();
        }
        return c;
    }

    /* access modifiers changed from: package-private */
    public void b(C0080c cVar) {
        synchronized (this.a) {
            if (cVar == null || cVar == null) {
                Objects.requireNonNull(cVar);
                throw null;
            }
        }
    }

    public void c(b bVar) {
        synchronized (this.a) {
        }
    }

    public void d(b bVar) {
        synchronized (this.a) {
        }
    }
}
