package com.google.firebase.installations;

/* access modifiers changed from: package-private */
public final /* synthetic */ class e implements Runnable {
    private final f b;
    private final boolean c;

    private e(f fVar, boolean z) {
        this.b = fVar;
        this.c = z;
    }

    public static Runnable a(f fVar, boolean z) {
        return new e(fVar, z);
    }

    public void run() {
        f.h(this.b, this.c);
    }
}
