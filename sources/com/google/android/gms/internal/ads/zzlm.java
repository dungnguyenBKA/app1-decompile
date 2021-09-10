package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzlm {
    public final zzkh zzasp;
    public final zzlu zzazr = new zzlu();
    public zzls zzazs;
    public zzlg zzazt;
    public int zzazu;
    public int zzazv;
    public int zzazw;
    public zzkk zzazx;
    public zzlr zzazy;

    public zzlm(zzkh zzkh) {
        this.zzasp = zzkh;
    }

    public final void reset() {
        zzlu zzlu = this.zzazr;
        zzlu.zzbas = 0;
        zzlu.zzbbf = 0;
        zzlu.zzbaz = false;
        zzlu.zzbbe = false;
        zzlu.zzbbb = null;
        this.zzazu = 0;
        this.zzazw = 0;
        this.zzazv = 0;
        this.zzazx = null;
        this.zzazy = null;
    }

    public final void zza(zzls zzls, zzlg zzlg) {
        this.zzazs = (zzls) zzpg.checkNotNull(zzls);
        this.zzazt = (zzlg) zzpg.checkNotNull(zzlg);
        this.zzasp.zze(zzls.zzahz);
        reset();
    }
}
