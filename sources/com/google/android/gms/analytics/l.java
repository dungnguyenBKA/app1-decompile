package com.google.android.gms.analytics;

import android.net.Uri;
import com.google.android.gms.common.internal.n;
import java.util.HashSet;
import java.util.List;

/* access modifiers changed from: package-private */
public final class l implements Runnable {
    final /* synthetic */ i b;
    final /* synthetic */ q c;

    l(q qVar, i iVar) {
        this.c = qVar;
        this.b = iVar;
    }

    public final void run() {
        this.b.d().e(this.b);
        for (r rVar : this.c.b) {
            rVar.zza();
        }
        i iVar = this.b;
        n.g("deliver should be called from worker thread");
        n.b(iVar.m(), "Measurement must be submitted");
        List<s> f = iVar.f();
        if (!f.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (s sVar : f) {
                Uri zzb = sVar.zzb();
                if (!hashSet.contains(zzb)) {
                    hashSet.add(zzb);
                    sVar.j(iVar);
                }
            }
        }
    }
}
