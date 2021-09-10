package com.google.firebase.remoteconfig.internal;

import java.util.concurrent.Executor;

final /* synthetic */ class d implements Executor {
    private static final d b = new d();

    private d() {
    }

    public static Executor a() {
        return b;
    }

    public void execute(Runnable runnable) {
        runnable.run();
    }
}
