package defpackage;

import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* renamed from: ne0  reason: default package */
public final class ne0 implements be0, ke0 {
    List<be0> b;
    volatile boolean c;

    @Override // defpackage.ke0
    public boolean a(be0 be0) {
        if (!c(be0)) {
            return false;
        }
        ((gf0) be0).e();
        return true;
    }

    @Override // defpackage.ke0
    public boolean b(be0 be0) {
        if (!this.c) {
            synchronized (this) {
                if (!this.c) {
                    List list = this.b;
                    if (list == null) {
                        list = new LinkedList();
                        this.b = list;
                    }
                    list.add(be0);
                    return true;
                }
            }
        }
        be0.e();
        return false;
    }

    @Override // defpackage.ke0
    public boolean c(be0 be0) {
        Objects.requireNonNull(be0, "Disposable item is null");
        if (this.c) {
            return false;
        }
        synchronized (this) {
            if (this.c) {
                return false;
            }
            List<be0> list = this.b;
            if (list != null) {
                if (list.remove(be0)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0015, code lost:
        if (r1 != null) goto L_0x0018;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0018, code lost:
        r1 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0020, code lost:
        if (r1.hasNext() == false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r1.next().e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002c, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x002d, code lost:
        androidx.core.app.b.K0(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0030, code lost:
        if (r2 == null) goto L_0x0032;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0032, code lost:
        r2 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0037, code lost:
        r2.add(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003b, code lost:
        if (r2 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0041, code lost:
        if (r2.size() != 1) goto L_0x004f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004e, code lost:
        throw defpackage.kf0.a((java.lang.Throwable) r2.get(0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0054, code lost:
        throw new defpackage.ee0(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        return;
     */
    @Override // defpackage.be0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r4 = this;
            boolean r0 = r4.c
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            monitor-enter(r4)
            boolean r0 = r4.c     // Catch:{ all -> 0x0056 }
            if (r0 == 0) goto L_0x000c
            monitor-exit(r4)     // Catch:{ all -> 0x0056 }
            return
        L_0x000c:
            r0 = 1
            r4.c = r0     // Catch:{ all -> 0x0056 }
            java.util.List<be0> r1 = r4.b     // Catch:{ all -> 0x0056 }
            r2 = 0
            r4.b = r2     // Catch:{ all -> 0x0056 }
            monitor-exit(r4)     // Catch:{ all -> 0x0056 }
            if (r1 != 0) goto L_0x0018
            goto L_0x0055
        L_0x0018:
            java.util.Iterator r1 = r1.iterator()
        L_0x001c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L_0x003b
            java.lang.Object r3 = r1.next()
            be0 r3 = (defpackage.be0) r3
            r3.e()     // Catch:{ all -> 0x002c }
            goto L_0x001c
        L_0x002c:
            r3 = move-exception
            androidx.core.app.b.K0(r3)
            if (r2 != 0) goto L_0x0037
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L_0x0037:
            r2.add(r3)
            goto L_0x001c
        L_0x003b:
            if (r2 == 0) goto L_0x0055
            int r1 = r2.size()
            if (r1 != r0) goto L_0x004f
            r0 = 0
            java.lang.Object r0 = r2.get(r0)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.RuntimeException r0 = defpackage.kf0.a(r0)
            throw r0
        L_0x004f:
            ee0 r0 = new ee0
            r0.<init>(r2)
            throw r0
        L_0x0055:
            return
        L_0x0056:
            r0 = move-exception
            monitor-exit(r4)
            goto L_0x005a
        L_0x0059:
            throw r0
        L_0x005a:
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ne0.e():void");
    }
}
