package com.google.firebase.installations;

final /* synthetic */ class d implements Runnable {
    private final f b;
    private final boolean c;

    private d(f fVar, boolean z) {
        this.b = fVar;
        this.c = z;
    }

    public static Runnable a(f fVar, boolean z) {
        return new d(fVar, z);
    }

    public void run() {
        this.b.b(this.c);
    }
}
