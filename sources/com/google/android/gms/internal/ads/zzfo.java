package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzcf;

public final class zzfo extends zzgn {
    private final Activity zzaas;
    private final View zzaat;

    public zzfo(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, View view, Activity activity) {
        super(zzfc, str, str2, zzb, i, 62);
        this.zzaat = view;
        this.zzaas = activity;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (this.zzaat != null) {
            boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsa)).booleanValue();
            Object[] objArr = (Object[]) this.zzabl.invoke(null, this.zzaat, this.zzaas, Boolean.valueOf(booleanValue));
            synchronized (this.zzabb) {
                this.zzabb.zzbp(((Long) objArr[0]).longValue());
                this.zzabb.zzbq(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.zzabb.zzaj((String) objArr[2]);
                }
            }
        }
    }
}
