package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzdvl;

public final class zzg extends zzdvl {
    public zzg(Looper looper) {
        super(looper);
    }

    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzr.zzkv().zza(e, "AdMobHandler.handleMessage");
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvl
    public final void zzb(Message message) {
        try {
            super.zzb(message);
        } catch (Throwable th) {
            zzr.zzkr();
            zzj.zza(zzr.zzkv().getApplicationContext(), th);
            throw th;
        }
    }
}
