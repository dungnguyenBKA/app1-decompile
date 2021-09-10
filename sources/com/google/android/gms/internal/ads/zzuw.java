package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;

final class zzuw implements zzelj<Integer, zzug.zzc.zza> {
    zzuw() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzelj
    public final /* synthetic */ zzug.zzc.zza convert(Integer num) {
        zzug.zzc.zza zzcb = zzug.zzc.zza.zzcb(num.intValue());
        return zzcb == null ? zzug.zzc.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzcb;
    }
}
