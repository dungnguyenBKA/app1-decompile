package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

final class zzajd extends zzaiw {
    private final /* synthetic */ zzbaa zzbwb;

    zzajd(zzaja zzaja, zzbaa zzbaa) {
        this.zzbwb = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzaix
    public final void zza(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzbwb.set(parcelFileDescriptor);
    }
}
