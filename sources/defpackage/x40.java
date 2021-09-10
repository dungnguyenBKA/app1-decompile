package defpackage;

import java.util.concurrent.ThreadFactory;

/* renamed from: x40  reason: default package */
final /* synthetic */ class x40 implements ThreadFactory {
    private static final x40 b = new x40();

    private x40() {
    }

    public static ThreadFactory a() {
        return b;
    }

    public Thread newThread(Runnable runnable) {
        int i = y40.c;
        return new Thread(runnable, "heartbeat-information-executor");
    }
}
