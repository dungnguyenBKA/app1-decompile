package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;

public final class zzcno extends zzatn {
    private final /* synthetic */ zzcnl zzgot;

    protected zzcno(zzcnl zzcnl) {
        this.zzgot = zzcnl;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zza(zzaq zzaq) {
        this.zzgot.zzdlg.setException(new zzap(zzaq.zzacp, zzaq.errorCode));
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzgot.zzdlg.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
