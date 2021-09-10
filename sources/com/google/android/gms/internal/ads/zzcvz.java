package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcvz implements Runnable {
    private final zzdmw zzfva;
    private final zzdnl zzghw;
    private final zzcwa zzgvu;
    private final zzcrl zzgvv;

    zzcvz(zzcwa zzcwa, zzdnl zzdnl, zzdmw zzdmw, zzcrl zzcrl) {
        this.zzgvu = zzcwa;
        this.zzghw = zzdnl;
        this.zzfva = zzdmw;
        this.zzgvv = zzcrl;
    }

    public final void run() {
        zzcwa zzcwa = this.zzgvu;
        zzdnl zzdnl = this.zzghw;
        zzdmw zzdmw = this.zzfva;
        zzcrl zzcrl = this.zzgvv;
        zzcvy zzcvy = zzcwa.zzgvy;
        zzcvy.zzc(zzdnl, zzdmw, zzcrl);
    }
}
