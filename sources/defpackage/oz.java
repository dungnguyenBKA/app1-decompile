package defpackage;

import android.os.Process;

/* renamed from: oz  reason: default package */
public abstract class oz implements Runnable {
    /* access modifiers changed from: protected */
    public abstract void a();

    public final void run() {
        Process.setThreadPriority(10);
        a();
    }
}
