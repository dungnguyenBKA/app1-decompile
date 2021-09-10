package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzaqy extends zzafw {
    private final /* synthetic */ zzaqw zzdqs;

    private zzaqy(zzaqw zzaqw) {
        this.zzdqs = zzaqw;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zza(zzafn zzafn, String str) {
        if (this.zzdqs.zzdqo != null) {
            this.zzdqs.zzdqo.onCustomClick(this.zzdqs.zzc(zzafn), str);
        }
    }
}
