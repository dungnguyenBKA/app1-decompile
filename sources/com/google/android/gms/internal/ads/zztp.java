package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.internal.b;

/* access modifiers changed from: package-private */
public final class zztp implements b.a {
    final /* synthetic */ zztn zzbvu;
    private final /* synthetic */ zzth zzbwa;
    private final /* synthetic */ zzbaa zzbwb;

    zztp(zztn zztn, zzth zzth, zzbaa zzbaa) {
        this.zzbvu = zztn;
        this.zzbwa = zzth;
        this.zzbwb = zzbaa;
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbvu.lock) {
            if (!this.zzbvu.zzbvv) {
                this.zzbvu.zzbvv = true;
                zzte zzte = this.zzbvu.zzbve;
                if (zzte != null) {
                    zzdzw<?> zzg = zzazp.zzeic.zzg(new zzto(this, zzte, this.zzbwa, this.zzbwb));
                    zzbaa zzbaa = this.zzbwb;
                    zzbaa.addListener(new zztr(zzbaa, zzg), zzazp.zzeih);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
    }
}
