package com.google.android.gms.measurement.internal;

import android.os.Process;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

/* access modifiers changed from: package-private */
public final class f4 extends Thread {
    private final Object b;
    private final BlockingQueue<e4<?>> c;
    private boolean d = false;
    final /* synthetic */ g4 e;

    public f4(g4 g4Var, String str, BlockingQueue<e4<?>> blockingQueue) {
        this.e = g4Var;
        Objects.requireNonNull(blockingQueue, "null reference");
        this.b = new Object();
        this.c = blockingQueue;
        setName(str);
    }

    private final void b() {
        synchronized (this.e.i) {
            try {
                if (!this.d) {
                    this.e.j.release();
                    this.e.i.notifyAll();
                    if (this == this.e.c) {
                        this.e.c = null;
                    } else if (this == this.e.d) {
                        this.e.d = null;
                    } else {
                        this.e.a.c().n().a("Current scheduler thread is neither worker nor network");
                    }
                    this.d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void c(InterruptedException interruptedException) {
        this.e.a.c().q().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    public final void a() {
        synchronized (this.b) {
            this.b.notifyAll();
        }
    }

    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.e.j.acquire();
                z = true;
            } catch (InterruptedException e2) {
                c(e2);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                e4<?> poll = this.c.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.c ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.b) {
                        if (this.c.peek() == null) {
                            Objects.requireNonNull(this.e);
                            try {
                                this.b.wait(30000);
                            } catch (InterruptedException e3) {
                                c(e3);
                            }
                        }
                    }
                    synchronized (this.e.i) {
                        if (this.c.peek() == null) {
                            if (this.e.a.x().u(null, v2.q0)) {
                            }
                            b();
                            return;
                        }
                    }
                }
            }
        } finally {
            b();
        }
    }
}
