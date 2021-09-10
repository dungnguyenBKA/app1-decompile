package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;

public final class zzaxd implements zzqw {
    private final Object lock;
    private String zzbut;
    private final Context zzcmf;
    private boolean zzebk;

    public zzaxd(Context context, String str) {
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzbut = str;
        this.zzebk = false;
        this.lock = new Object();
    }

    public final String getAdUnitId() {
        return this.zzbut;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        zzan(zzqx.zzbrj);
    }

    public final void zzan(boolean z) {
        if (zzr.zzlp().zzy(this.zzcmf)) {
            synchronized (this.lock) {
                if (this.zzebk != z) {
                    this.zzebk = z;
                    if (!TextUtils.isEmpty(this.zzbut)) {
                        if (this.zzebk) {
                            zzr.zzlp().zzd(this.zzcmf, this.zzbut);
                        } else {
                            zzr.zzlp().zze(this.zzcmf, this.zzbut);
                        }
                    }
                }
            }
        }
    }
}
