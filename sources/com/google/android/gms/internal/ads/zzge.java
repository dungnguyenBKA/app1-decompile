package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;

public final class zzge extends zzgn {
    public zzge(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 73);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        try {
            this.zzabb.zzi(((Boolean) this.zzabl.invoke(null, new Object[]{this.zzwc.getContext()})).booleanValue() ? zzcq.ENUM_TRUE : zzcq.ENUM_FALSE);
        } catch (InvocationTargetException unused) {
            this.zzabb.zzi(zzcq.ENUM_FAILURE);
        }
    }
}
