package com.google.android.gms.internal.ads;

public class zzbnt {
    protected final zzdmw zzesr;
    protected final zzdnl zzfrd;
    private final zzbsg zzfwe;
    private final zzbsw zzfwf;
    private final zzdkk zzfwg;
    private final zzbrh zzfwh;
    private final zzbud zzfwi;

    protected zzbnt(zzbnw zzbnw) {
        this.zzfrd = zzbnw.zzfrd;
        this.zzesr = zzbnw.zzesr;
        this.zzfwe = zzbnw.zzfwe;
        this.zzfwf = zzbnw.zzfwf;
        this.zzfwg = zzbnw.zzfwg;
        this.zzfwh = zzbnw.zzfwh;
        this.zzfwi = zzbnw.zzfwi;
    }

    public void destroy() {
        this.zzfwe.zzcd(null);
    }

    public void zzakb() {
        this.zzfwf.onAdLoaded();
    }

    public final zzbsg zzakq() {
        return this.zzfwe;
    }

    public final zzbrh zzakr() {
        return this.zzfwh;
    }

    public final zzdkk zzaks() {
        return this.zzfwg;
    }

    public final zzbve zzakt() {
        return this.zzfwi.zzakt();
    }
}
