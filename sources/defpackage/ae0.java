package defpackage;

import java.util.Objects;

/* renamed from: ae0  reason: default package */
public final class ae0 implements be0, ke0 {
    lf0<be0> b;
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
                    lf0<be0> lf0 = this.b;
                    if (lf0 == null) {
                        lf0 = new lf0<>();
                        this.b = lf0;
                    }
                    lf0.a(be0);
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
            lf0<be0> lf0 = this.b;
            if (lf0 != null) {
                if (lf0.d(be0)) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean d() {
        return this.c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0015, code lost:
        if (r1 != null) goto L_0x0018;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0018, code lost:
        r1 = r1.b();
        r3 = r1.length;
        r5 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001f, code lost:
        if (r5 >= r3) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0021, code lost:
        r6 = r1[r5];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0025, code lost:
        if ((r6 instanceof defpackage.be0) == false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        ((defpackage.be0) r6).e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002d, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x002e, code lost:
        androidx.core.app.b.K0(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0031, code lost:
        if (r2 == null) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0033, code lost:
        r2 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0038, code lost:
        r2.add(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x003e, code lost:
        if (r2 == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0044, code lost:
        if (r2.size() != 1) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0050, code lost:
        throw defpackage.kf0.a((java.lang.Throwable) r2.get(0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0056, code lost:
        throw new defpackage.ee0(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        return;
     */
    @Override // defpackage.be0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
            r8 = this;
            boolean r0 = r8.c
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            monitor-enter(r8)
            boolean r0 = r8.c     // Catch:{ all -> 0x0058 }
            if (r0 == 0) goto L_0x000c
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            return
        L_0x000c:
            r0 = 1
            r8.c = r0     // Catch:{ all -> 0x0058 }
            lf0<be0> r1 = r8.b     // Catch:{ all -> 0x0058 }
            r2 = 0
            r8.b = r2     // Catch:{ all -> 0x0058 }
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            if (r1 != 0) goto L_0x0018
            goto L_0x0057
        L_0x0018:
            java.lang.Object[] r1 = r1.b()
            int r3 = r1.length
            r4 = 0
            r5 = 0
        L_0x001f:
            if (r5 >= r3) goto L_0x003e
            r6 = r1[r5]
            boolean r7 = r6 instanceof defpackage.be0
            if (r7 == 0) goto L_0x003b
            be0 r6 = (defpackage.be0) r6     // Catch:{ all -> 0x002d }
            r6.e()     // Catch:{ all -> 0x002d }
            goto L_0x003b
        L_0x002d:
            r6 = move-exception
            androidx.core.app.b.K0(r6)
            if (r2 != 0) goto L_0x0038
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L_0x0038:
            r2.add(r6)
        L_0x003b:
            int r5 = r5 + 1
            goto L_0x001f
        L_0x003e:
            if (r2 == 0) goto L_0x0057
            int r1 = r2.size()
            if (r1 != r0) goto L_0x0051
            java.lang.Object r0 = r2.get(r4)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.RuntimeException r0 = defpackage.kf0.a(r0)
            throw r0
        L_0x0051:
            ee0 r0 = new ee0
            r0.<init>(r2)
            throw r0
        L_0x0057:
            return
        L_0x0058:
            r0 = move-exception
            monitor-exit(r8)
            goto L_0x005c
        L_0x005b:
            throw r0
        L_0x005c:
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ae0.e():void");
    }
}
