package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzagz extends zzafw {
    private final /* synthetic */ zzagx zzdgn;

    private zzagz(zzagx zzagx) {
        this.zzdgn = zzagx;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(zzafn zzafn, String str) {
        if (this.zzdgn.zzdgl != null) {
            this.zzdgn.zzdgl.onCustomClick(this.zzdgn.zzb(zzafn), str);
        }
    }
}
