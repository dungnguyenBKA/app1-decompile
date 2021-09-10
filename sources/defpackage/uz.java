package defpackage;

import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
/* renamed from: uz  reason: default package */
public class uz implements Callable<Void> {
    final /* synthetic */ Runnable b;

    uz(tz tzVar, Runnable runnable) {
        this.b = runnable;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public Void call() {
        this.b.run();
        return null;
    }
}
