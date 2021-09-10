package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* access modifiers changed from: package-private */
public final class zzaja implements zzdyu<zzaiz, ParcelFileDescriptor> {
    private final /* synthetic */ zzait zzdiq;

    zzaja(zzajb zzajb, zzait zzait) {
        this.zzdiq = zzait;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzdzw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdyu
    public final /* synthetic */ zzdzw<ParcelFileDescriptor> zzf(zzaiz zzaiz) {
        zzbaa zzbaa = new zzbaa();
        zzaiz.zza(this.zzdiq, new zzajd(this, zzbaa));
        return zzbaa;
    }
}
