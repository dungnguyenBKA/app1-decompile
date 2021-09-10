package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.k;

final /* synthetic */ class zzakv implements k {
    private final zzaif zzdjh;

    zzakv(zzaif zzaif) {
        this.zzdjh = zzaif;
    }

    @Override // com.google.android.gms.common.util.k
    public final boolean apply(Object obj) {
        zzaif zzaif = (zzaif) obj;
        return (zzaif instanceof zzakx) && zzakx.zza((zzakx) zzaif).equals(this.zzdjh);
    }
}
