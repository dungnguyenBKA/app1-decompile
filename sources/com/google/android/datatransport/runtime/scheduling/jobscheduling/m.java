package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.e;
import com.google.android.datatransport.runtime.backends.f;
import com.google.android.datatransport.runtime.backends.g;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import javax.inject.Inject;

public class m {
    private final Context a;
    private final e b;
    private final eu c;
    private final s d;
    private final Executor e;
    private final lv f;
    private final mv g;

    @Inject
    public m(Context context, e eVar, eu euVar, s sVar, Executor executor, lv lvVar, mv mvVar) {
        this.a = context;
        this.b = eVar;
        this.c = euVar;
        this.d = sVar;
        this.e = executor;
        this.f = lvVar;
        this.g = mvVar;
    }

    static /* synthetic */ Object b(m mVar, g gVar, Iterable iterable, it itVar, int i) {
        if (gVar.c() == g.a.TRANSIENT_ERROR) {
            mVar.c.a0(iterable);
            mVar.d.a(itVar, i + 1);
            return null;
        }
        mVar.c.d(iterable);
        if (gVar.c() == g.a.OK) {
            mVar.c.r(itVar, gVar.b() + mVar.g.a());
        }
        if (!mVar.c.Z(itVar)) {
            return null;
        }
        mVar.d.b(itVar, 1, true);
        return null;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0038, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r3.d.a(r4, r5 + 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0044, code lost:
        r6.run();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0047, code lost:
        throw r3;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x003a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void d(com.google.android.datatransport.runtime.scheduling.jobscheduling.m r3, defpackage.it r4, int r5, java.lang.Runnable r6) {
        /*
            r0 = 1
            lv r1 = r3.f     // Catch:{ kv -> 0x003a }
            eu r2 = r3.c     // Catch:{ kv -> 0x003a }
            r2.getClass()     // Catch:{ kv -> 0x003a }
            lv$a r2 = com.google.android.datatransport.runtime.scheduling.jobscheduling.k.a(r2)     // Catch:{ kv -> 0x003a }
            r1.j(r2)     // Catch:{ kv -> 0x003a }
            android.content.Context r1 = r3.a     // Catch:{ kv -> 0x003a }
            java.lang.String r2 = "connectivity"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch:{ kv -> 0x003a }
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1     // Catch:{ kv -> 0x003a }
            android.net.NetworkInfo r1 = r1.getActiveNetworkInfo()     // Catch:{ kv -> 0x003a }
            if (r1 == 0) goto L_0x0027
            boolean r1 = r1.isConnected()     // Catch:{ kv -> 0x003a }
            if (r1 == 0) goto L_0x0027
            r1 = 1
            goto L_0x0028
        L_0x0027:
            r1 = 0
        L_0x0028:
            if (r1 != 0) goto L_0x0034
            lv r1 = r3.f     // Catch:{ kv -> 0x003a }
            lv$a r2 = com.google.android.datatransport.runtime.scheduling.jobscheduling.l.a(r3, r4, r5)     // Catch:{ kv -> 0x003a }
            r1.j(r2)     // Catch:{ kv -> 0x003a }
            goto L_0x0040
        L_0x0034:
            r3.e(r4, r5)     // Catch:{ kv -> 0x003a }
            goto L_0x0040
        L_0x0038:
            r3 = move-exception
            goto L_0x0044
        L_0x003a:
            com.google.android.datatransport.runtime.scheduling.jobscheduling.s r3 = r3.d     // Catch:{ all -> 0x0038 }
            int r5 = r5 + r0
            r3.a(r4, r5)     // Catch:{ all -> 0x0038 }
        L_0x0040:
            r6.run()
            return
        L_0x0044:
            r6.run()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.scheduling.jobscheduling.m.d(com.google.android.datatransport.runtime.scheduling.jobscheduling.m, it, int, java.lang.Runnable):void");
    }

    /* access modifiers changed from: package-private */
    public void e(it itVar, int i) {
        g gVar;
        com.google.android.datatransport.runtime.backends.m a2 = this.b.a(itVar.b());
        Iterable<ju> iterable = (Iterable) this.f.j(i.a(this, itVar));
        if (iterable.iterator().hasNext()) {
            if (a2 == null) {
                st.a("Uploader", "Unknown backend for %s, deleting event batch for it...", itVar);
                gVar = g.a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (ju juVar : iterable) {
                    arrayList.add(juVar.a());
                }
                f.a a3 = f.a();
                a3.b(arrayList);
                a3.c(itVar.c());
                gVar = a2.a(a3.a());
            }
            this.f.j(j.a(this, gVar, iterable, itVar, i));
        }
    }

    public void f(it itVar, int i, Runnable runnable) {
        this.e.execute(h.a(this, itVar, i, runnable));
    }
}
