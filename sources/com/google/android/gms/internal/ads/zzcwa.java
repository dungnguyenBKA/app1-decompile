package com.google.android.gms.internal.ads;

final class zzcwa implements zzbyn {
    private final /* synthetic */ zzdmw zzgve;
    private final /* synthetic */ zzdnl zzgvw;
    private final /* synthetic */ zzcrl zzgvx;
    final /* synthetic */ zzcvy zzgvy;

    zzcwa(zzcvy zzcvy, zzdnl zzdnl, zzdmw zzdmw, zzcrl zzcrl) {
        this.zzgvy = zzcvy;
        this.zzgvw = zzdnl;
        this.zzgve = zzdmw;
        this.zzgvx = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void onInitializationSucceeded() {
        this.zzgvy.zzfsj.execute(new zzcvz(this, this.zzgvw, this.zzgve, this.zzgvx));
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void zzdy(int i) {
        String valueOf = String.valueOf(this.zzgvx.zzcio);
        zzazk.zzex(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}
