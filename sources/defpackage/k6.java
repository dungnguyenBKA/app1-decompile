package defpackage;

import java.util.concurrent.Executor;

/* access modifiers changed from: package-private */
/* renamed from: k6  reason: default package */
public enum k6 implements Executor {
    INSTANCE;

    public void execute(Runnable runnable) {
        runnable.run();
    }

    public String toString() {
        return "DirectExecutor";
    }
}
