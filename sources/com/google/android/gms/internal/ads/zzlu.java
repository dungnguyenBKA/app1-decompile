package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzlu {
    public int zzaxc;
    public zzlg zzbao;
    public long zzbap;
    public long zzbaq;
    public long zzbar;
    public int zzbas;
    public long[] zzbat;
    public int[] zzbau;
    public int[] zzbav;
    public int[] zzbaw;
    public long[] zzbax;
    public boolean[] zzbay;
    public boolean zzbaz;
    public boolean[] zzbba;
    public zzlr zzbbb;
    public int zzbbc;
    public zzpn zzbbd;
    public boolean zzbbe;
    public long zzbbf;

    zzlu() {
    }

    public final void zzau(int i) {
        zzpn zzpn = this.zzbbd;
        if (zzpn == null || zzpn.limit() < i) {
            this.zzbbd = new zzpn(i);
        }
        this.zzbbc = i;
        this.zzbaz = true;
        this.zzbbe = true;
    }

    public final long zzav(int i) {
        return this.zzbax[i] + ((long) this.zzbaw[i]);
    }
}
