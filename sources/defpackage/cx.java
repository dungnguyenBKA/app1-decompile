package defpackage;

import java.util.concurrent.Executor;

/* renamed from: cx  reason: default package */
final class cx implements Executor {
    cx() {
    }

    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
