package com.google.android.gms.internal.ads;

public final class zzcea implements zzbse {
    private final zzccd zzgch;
    private final zzcch zzgdj;

    public zzcea(zzccd zzccd, zzcch zzcch) {
        this.zzgch = zzccd;
        this.zzgdj = zzcch;
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (this.zzgch.zzaob() != null) {
            zzbeb zzaoa = this.zzgch.zzaoa();
            zzbeb zzanz = this.zzgch.zzanz();
            if (zzaoa == null) {
                zzaoa = zzanz != null ? zzanz : null;
            }
            if (this.zzgdj.zzanq() && zzaoa != null) {
                zzaoa.zza("onSdkImpression", new x());
            }
        }
    }
}
