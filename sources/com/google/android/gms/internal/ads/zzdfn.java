package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdfn implements Callable {
    private final Object zzdlk;
    private final List zzhct;

    zzdfn(List list, Object obj) {
        this.zzhct = list;
        this.zzdlk = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        List<zzdzw> list = this.zzhct;
        Object obj = this.zzdlk;
        for (zzdzw zzdzw : list) {
            zzdfj zzdfj = (zzdfj) zzdzw.get();
            if (zzdfj != null) {
                zzdfj.zzr(obj);
            }
        }
        return obj;
    }
}
