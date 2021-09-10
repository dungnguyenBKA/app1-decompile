package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

public final class zzbnz {
    public final List<? extends zzdzw<? extends zzbnt>> zzfwk;

    public zzbnz(List<? extends zzdzw<? extends zzbnt>> list) {
        this.zzfwk = list;
    }

    public static zzcrj<zzbnz> zza(zzcty<? extends zzbnt> zzcty) {
        return new zzcrm(zzcty, zzboc.zzeaj);
    }

    public static zzcrj<zzbnz> zza(zzcrj<? extends zzbnt> zzcrj) {
        return new zzcrm(zzcrj, zzbob.zzeaj);
    }

    public zzbnz(zzbnt zzbnt) {
        this.zzfwk = Collections.singletonList(zzdzk.zzag(zzbnt));
    }
}
