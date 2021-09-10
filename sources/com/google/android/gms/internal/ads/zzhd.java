package com.google.android.gms.internal.ads;

public abstract class zzhd implements zzhy, zzib {
    private int index;
    private int state;
    private final int zzaed;
    private zzia zzaee;
    private zznn zzaef;
    private long zzaeg;
    private boolean zzaeh = true;
    private boolean zzaei;

    public zzhd(int i) {
        this.zzaed = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void disable() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        zzpg.checkState(z);
        this.state = 0;
        this.zzaef = null;
        this.zzaei = false;
        zzeh();
    }

    /* access modifiers changed from: protected */
    public final int getIndex() {
        return this.index;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.gms.internal.ads.zzib, com.google.android.gms.internal.ads.zzhy
    public final int getTrackType() {
        return this.zzaed;
    }

    /* access modifiers changed from: protected */
    public void onStarted() {
    }

    /* access modifiers changed from: protected */
    public void onStopped() {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void setIndex(int i) {
        this.index = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void start() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        zzpg.checkState(z);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void stop() {
        zzpg.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public void zza(int i, Object obj) {
    }

    /* access modifiers changed from: protected */
    public void zza(long j, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzia zzia, zzht[] zzhtArr, zznn zznn, long j, boolean z, long j2) {
        zzpg.checkState(this.state == 0);
        this.zzaee = zzia;
        this.state = 1;
        zze(z);
        zza(zzhtArr, zznn, j2);
        zza(j, z);
    }

    /* access modifiers changed from: protected */
    public void zza(zzht[] zzhtArr, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzdm(long j) {
        this.zzaei = false;
        this.zzaeh = false;
        zza(j, false);
    }

    /* access modifiers changed from: protected */
    public final void zzdn(long j) {
        this.zzaef.zzeh(j - this.zzaeg);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final zzib zzdz() {
        return this;
    }

    /* access modifiers changed from: protected */
    public void zze(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public zzpk zzea() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final zznn zzeb() {
        return this.zzaef;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final boolean zzec() {
        return this.zzaeh;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzed() {
        this.zzaei = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final boolean zzee() {
        return this.zzaei;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzef() {
        this.zzaef.zzhs();
    }

    @Override // com.google.android.gms.internal.ads.zzib
    public int zzeg() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void zzeh() {
    }

    /* access modifiers changed from: protected */
    public final zzia zzei() {
        return this.zzaee;
    }

    /* access modifiers changed from: protected */
    public final boolean zzej() {
        return this.zzaeh ? this.zzaei : this.zzaef.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzht[] zzhtArr, zznn zznn, long j) {
        zzpg.checkState(!this.zzaei);
        this.zzaef = zznn;
        this.zzaeh = false;
        this.zzaeg = j;
        zza(zzhtArr, j);
    }

    /* access modifiers changed from: protected */
    public final int zza(zzhv zzhv, zzjp zzjp, boolean z) {
        int zzb = this.zzaef.zzb(zzhv, zzjp, z);
        if (zzb == -4) {
            if (zzjp.zzgi()) {
                this.zzaeh = true;
                if (this.zzaei) {
                    return -4;
                }
                return -3;
            }
            zzjp.zzaol += this.zzaeg;
        } else if (zzb == -5) {
            zzht zzht = zzhv.zzahz;
            long j = zzht.zzaht;
            if (j != Long.MAX_VALUE) {
                zzhv.zzahz = zzht.zzds(j + this.zzaeg);
            }
        }
        return zzb;
    }
}
