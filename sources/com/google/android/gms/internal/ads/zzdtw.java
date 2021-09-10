package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdtt;

final class zzdtw implements zzelj<Integer, zzdtt.zza> {
    zzdtw() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzelj
    public final /* synthetic */ zzdtt.zza convert(Integer num) {
        zzdtt.zza zzeh = zzdtt.zza.zzeh(num.intValue());
        return zzeh == null ? zzdtt.zza.BLOCKED_REASON_UNKNOWN : zzeh;
    }
}
