package defpackage;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;

/* renamed from: j1  reason: default package */
public abstract class j1 {

    /* access modifiers changed from: package-private */
    /* renamed from: j1$a */
    public class a implements Runnable {
        final /* synthetic */ Typeface b;

        a(Typeface typeface) {
            this.b = typeface;
        }

        public void run() {
            j1.this.d(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: j1$b */
    public class b implements Runnable {
        final /* synthetic */ int b;

        b(int i) {
            this.b = i;
        }

        public void run() {
            j1.this.c(this.b);
        }
    }

    public final void a(int i, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b(i));
    }

    public final void b(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new a(typeface));
    }

    public abstract void c(int i);

    public abstract void d(Typeface typeface);
}
