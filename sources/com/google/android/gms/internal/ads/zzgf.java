package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgf extends zzgn {
    private final StackTraceElement[] zzabg;

    public zzgf(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzfc, str, str2, zzb, i, 45);
        this.zzabg = stackTraceElementArr;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        zzcq zzcq;
        StackTraceElement[] stackTraceElementArr = this.zzabg;
        if (stackTraceElementArr != null) {
            zzey zzey = new zzey((String) this.zzabl.invoke(null, stackTraceElementArr));
            synchronized (this.zzabb) {
                this.zzabb.zzbi(zzey.zzyq.longValue());
                if (zzey.zzyr.booleanValue()) {
                    zzcf.zza.zzb zzb = this.zzabb;
                    if (zzey.zzys.booleanValue()) {
                        zzcq = zzcq.ENUM_FALSE;
                    } else {
                        zzcq = zzcq.ENUM_TRUE;
                    }
                    zzb.zzh(zzcq);
                } else {
                    this.zzabb.zzh(zzcq.ENUM_FAILURE);
                }
            }
        }
    }
}
