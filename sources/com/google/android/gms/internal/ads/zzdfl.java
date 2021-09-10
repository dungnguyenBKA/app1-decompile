package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executor;

public final class zzdfl<T> {
    private final Executor executor;
    private final Set<zzdfi<? extends zzdfj<T>>> zzhdn;

    public zzdfl(Executor executor2, Set<zzdfi<? extends zzdfj<T>>> set) {
        this.executor = executor2;
        this.zzhdn = set;
    }

    public final zzdzw<T> zzs(T t) {
        ArrayList arrayList = new ArrayList(this.zzhdn.size());
        for (zzdfi<? extends zzdfj<T>> zzdfi : this.zzhdn) {
            zzdzw<? extends zzdfj<T>> zzasy = zzdfi.zzasy();
            if (zzadl.zzdee.get().booleanValue()) {
                zzasy.addListener(new zzdfk(zzdfi, zzr.zzky().b()), zzazp.zzeih);
            }
            arrayList.add(zzasy);
        }
        return zzdzk.zzk(arrayList).zzb(new zzdfn(arrayList, t), this.executor);
    }
}
