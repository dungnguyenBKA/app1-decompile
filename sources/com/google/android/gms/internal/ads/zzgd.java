package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.util.List;

public final class zzgd extends zzgn {
    private List<Long> zzabf = null;

    public zzgd(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 31);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzax(-1);
        this.zzabb.zzay(-1);
        if (this.zzabf == null) {
            this.zzabf = (List) this.zzabl.invoke(null, this.zzwc.getContext());
        }
        List<Long> list = this.zzabf;
        if (list != null && list.size() == 2) {
            synchronized (this.zzabb) {
                this.zzabb.zzax(this.zzabf.get(0).longValue());
                this.zzabb.zzay(this.zzabf.get(1).longValue());
            }
        }
    }
}
