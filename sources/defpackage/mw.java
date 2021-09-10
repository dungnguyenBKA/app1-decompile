package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.tasks.zzb;
import java.util.concurrent.Executor;

/* renamed from: mw  reason: default package */
public final class mw {
    public static final Executor a = new a();
    static final Executor b = new cx();

    /* renamed from: mw$a */
    private static final class a implements Executor {
        private final Handler b = new zzb(Looper.getMainLooper());

        public final void execute(Runnable runnable) {
            this.b.post(runnable);
        }
    }
}
