package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import com.google.android.gms.ads.internal.overlay.zzc;

final /* synthetic */ class zzcrf implements DialogInterface.OnCancelListener {
    private final zzc zzdsh;

    zzcrf(zzc zzc) {
        this.zzdsh = zzc;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        zzc zzc = this.zzdsh;
        if (zzc != null) {
            zzc.close();
        }
    }
}
