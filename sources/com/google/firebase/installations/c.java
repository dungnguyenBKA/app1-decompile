package com.google.firebase.installations;

/* access modifiers changed from: package-private */
public final /* synthetic */ class c implements Runnable {
    private final f b;

    private c(f fVar) {
        this.b = fVar;
    }

    public static Runnable a(f fVar) {
        return new c(fVar);
    }

    public void run() {
        this.b.b(false);
    }
}
