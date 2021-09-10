package defpackage;

import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
/* renamed from: xy  reason: default package */
public final /* synthetic */ class xy implements Executor {
    static final Executor b = new xy();

    private xy() {
    }

    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
