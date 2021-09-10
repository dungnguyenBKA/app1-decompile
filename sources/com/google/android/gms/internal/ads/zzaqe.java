package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzaqe implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaqf zzdpc;

    zzaqe(zzaqf zzaqf) {
        this.zzdpc = zzaqf;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent createIntent = this.zzdpc.createIntent();
        zzr.zzkr();
        zzj.zza(this.zzdpc.context, createIntent);
    }
}
