package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;

public final class zzms implements zzkc, zznc, zzno, zzoz<zzmv> {
    private final Handler handler;
    private final Uri uri;
    private final Handler zzaet;
    private boolean zzafw;
    private boolean zzags;
    private long zzaip;
    private final zzon zzaop;
    private final int zzbdm;
    private final zzmz zzbdn;
    private final zznd zzbdo;
    private final zzol zzbdp;
    private final String zzbdq = null;
    private final long zzbdr;
    private final zzpa zzbds;
    private final zzmy zzbdt;
    private final zzpi zzbdu;
    private final Runnable zzbdv;
    private final Runnable zzbdw;
    private final SparseArray<zznm> zzbdx;
    private zznb zzbdy;
    private zzkf zzbdz;
    private boolean zzbea;
    private boolean zzbeb;
    private boolean zzbec;
    private int zzbed;
    private zznu zzbee;
    private boolean[] zzbef;
    private boolean[] zzbeg;
    private boolean zzbeh;
    private long zzbei;
    private long zzbej;
    private int zzbek;
    private boolean zzbel;
    private long zzco;

    public zzms(Uri uri2, zzon zzon, zzka[] zzkaArr, int i, Handler handler2, zzmz zzmz, zznd zznd, zzol zzol, String str, int i2) {
        this.uri = uri2;
        this.zzaop = zzon;
        this.zzbdm = i;
        this.zzaet = handler2;
        this.zzbdn = zzmz;
        this.zzbdo = zznd;
        this.zzbdp = zzol;
        this.zzbdr = (long) i2;
        this.zzbds = new zzpa("Loader:ExtractorMediaPeriod");
        this.zzbdt = new zzmy(zzkaArr, this);
        this.zzbdu = new zzpi();
        this.zzbdv = new zzmr(this);
        this.zzbdw = new zzmu(this);
        this.handler = new Handler();
        this.zzbej = -9223372036854775807L;
        this.zzbdx = new SparseArray<>();
        this.zzco = -1;
    }

    private final void startLoading() {
        zzkf zzkf;
        zzmv zzmv = new zzmv(this, this.uri, this.zzaop, this.zzbdt, this.zzbdu);
        if (this.zzags) {
            zzpg.checkState(zzhw());
            long j = this.zzaip;
            if (j == -9223372036854775807L || this.zzbej < j) {
                zzmv.zze(this.zzbdz.zzdz(this.zzbej), this.zzbej);
                this.zzbej = -9223372036854775807L;
            } else {
                this.zzbel = true;
                this.zzbej = -9223372036854775807L;
                return;
            }
        }
        this.zzbek = zzhu();
        int i = this.zzbdm;
        if (i == -1) {
            i = (this.zzags && this.zzco == -1 && ((zzkf = this.zzbdz) == null || zzkf.getDurationUs() == -9223372036854775807L)) ? 6 : 3;
        }
        this.zzbds.zza(zzmv, this, i);
    }

    static /* synthetic */ SparseArray zzd(zzms zzms) {
        return zzms.zzbdx;
    }

    /* access modifiers changed from: public */
    private final void zzht() {
        if (!this.zzafw && !this.zzags && this.zzbdz != null && this.zzbea) {
            int size = this.zzbdx.size();
            for (int i = 0; i < size; i++) {
                if (this.zzbdx.valueAt(i).zzif() == null) {
                    return;
                }
            }
            this.zzbdu.zziu();
            zznr[] zznrArr = new zznr[size];
            this.zzbeg = new boolean[size];
            this.zzbef = new boolean[size];
            this.zzaip = this.zzbdz.getDurationUs();
            int i2 = 0;
            while (true) {
                boolean z = true;
                if (i2 < size) {
                    zzht zzif = this.zzbdx.valueAt(i2).zzif();
                    zznrArr[i2] = new zznr(zzif);
                    String str = zzif.zzahe;
                    if (!zzpj.zzbd(str) && !zzpj.zzbc(str)) {
                        z = false;
                    }
                    this.zzbeg[i2] = z;
                    this.zzbeh = z | this.zzbeh;
                    i2++;
                } else {
                    this.zzbee = new zznu(zznrArr);
                    this.zzags = true;
                    this.zzbdo.zzb(new zzns(this.zzaip, this.zzbdz.isSeekable()), null);
                    this.zzbdy.zza((zznc) this);
                    return;
                }
            }
        }
    }

    private final int zzhu() {
        int size = this.zzbdx.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.zzbdx.valueAt(i2).zzid();
        }
        return i;
    }

    private final long zzhv() {
        int size = this.zzbdx.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.zzbdx.valueAt(i).zzhv());
        }
        return j;
    }

    private final boolean zzhw() {
        return this.zzbej != -9223372036854775807L;
    }

    public final void release() {
        this.zzbds.zza(new zzmt(this, this.zzbdt));
        this.handler.removeCallbacksAndMessages(null);
        this.zzafw = true;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zza(zznb zznb, long j) {
        this.zzbdy = zznb;
        this.zzbdu.open();
        startLoading();
    }

    public final boolean zzaz(int i) {
        if (!this.zzbel) {
            return !zzhw() && this.zzbdx.valueAt(i).zzie();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final zzkh zzc(int i, int i2) {
        zznm zznm = this.zzbdx.get(i);
        if (zznm != null) {
            return zznm;
        }
        zznm zznm2 = new zznm(this.zzbdp);
        zznm2.zza(this);
        this.zzbdx.put(i, zznm2);
        return zznm2;
    }

    public final void zze(int i, long j) {
        zznm valueAt = this.zzbdx.valueAt(i);
        if (!this.zzbel || j <= valueAt.zzhv()) {
            valueAt.zze(j, true);
        } else {
            valueAt.zzii();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        if (this.zzbel) {
            return false;
        }
        if (this.zzags && this.zzbed == 0) {
            return false;
        }
        boolean open = this.zzbdu.open();
        if (this.zzbds.isLoading()) {
            return open;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzef(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzeg(long j) {
        if (!this.zzbdz.isSeekable()) {
            j = 0;
        }
        this.zzbei = j;
        int size = this.zzbdx.size();
        boolean z = !zzhw();
        int i = 0;
        while (z && i < size) {
            if (this.zzbef[i]) {
                z = this.zzbdx.valueAt(i).zze(j, false);
            }
            i++;
        }
        if (!z) {
            this.zzbej = j;
            this.zzbel = false;
            if (this.zzbds.isLoading()) {
                this.zzbds.zzit();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.zzbdx.valueAt(i2).zzk(this.zzbef[i2]);
                }
            }
        }
        this.zzbec = false;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzf(zzht zzht) {
        this.handler.post(this.zzbdv);
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zzgs() {
        this.zzbea = true;
        this.handler.post(this.zzbdv);
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        if (this.zzbed == 0) {
            return Long.MIN_VALUE;
        }
        return zzhr();
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzho() {
        this.zzbds.zzbg(RecyclerView.UNDEFINED_DURATION);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final zznu zzhp() {
        return this.zzbee;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhq() {
        if (!this.zzbec) {
            return -9223372036854775807L;
        }
        this.zzbec = false;
        return this.zzbei;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhr() {
        long j;
        if (this.zzbel) {
            return Long.MIN_VALUE;
        }
        if (zzhw()) {
            return this.zzbej;
        }
        if (this.zzbeh) {
            j = Long.MAX_VALUE;
            int size = this.zzbdx.size();
            for (int i = 0; i < size; i++) {
                if (this.zzbeg[i]) {
                    j = Math.min(j, this.zzbdx.valueAt(i).zzhv());
                }
            }
        } else {
            j = zzhv();
        }
        return j == Long.MIN_VALUE ? this.zzbei : j;
    }

    public final void zzhs() {
        this.zzbds.zzbg(RecyclerView.UNDEFINED_DURATION);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zza(zzog[] zzogArr, boolean[] zArr, zznn[] zznnArr, boolean[] zArr2, long j) {
        zzpg.checkState(this.zzags);
        for (int i = 0; i < zzogArr.length; i++) {
            if (zznnArr[i] != null && (zzogArr[i] == null || !zArr[i])) {
                int i2 = ((zzmx) zznnArr[i]).track;
                zzpg.checkState(this.zzbef[i2]);
                this.zzbed--;
                this.zzbef[i2] = false;
                this.zzbdx.valueAt(i2).disable();
                zznnArr[i] = null;
            }
        }
        boolean z = false;
        for (int i3 = 0; i3 < zzogArr.length; i3++) {
            if (zznnArr[i3] == null && zzogArr[i3] != null) {
                zzog zzog = zzogArr[i3];
                zzpg.checkState(zzog.length() == 1);
                zzpg.checkState(zzog.zzbd(0) == 0);
                int zza = this.zzbee.zza(zzog.zzil());
                zzpg.checkState(!this.zzbef[zza]);
                this.zzbed++;
                this.zzbef[zza] = true;
                zznnArr[i3] = new zzmx(this, zza);
                zArr2[i3] = true;
                z = true;
            }
        }
        if (!this.zzbeb) {
            int size = this.zzbdx.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.zzbef[i4]) {
                    this.zzbdx.valueAt(i4).disable();
                }
            }
        }
        if (this.zzbed == 0) {
            this.zzbec = false;
            if (this.zzbds.isLoading()) {
                this.zzbds.zzit();
            }
        } else if (!this.zzbeb ? j != 0 : z) {
            j = zzeg(j);
            for (int i5 = 0; i5 < zznnArr.length; i5++) {
                if (zznnArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.zzbeb = true;
        return j;
    }

    public final int zza(int i, zzhv zzhv, zzjp zzjp, boolean z) {
        if (this.zzbec || zzhw()) {
            return -3;
        }
        return this.zzbdx.valueAt(i).zza(zzhv, zzjp, z, this.zzbel, this.zzbei);
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zza(zzkf zzkf) {
        this.zzbdz = zzkf;
        this.handler.post(this.zzbdv);
    }

    private final void zza(zzmv zzmv) {
        if (this.zzco == -1) {
            this.zzco = zzmv.zzco;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ int zza(zzmv zzmv, long j, long j2, IOException iOException) {
        zzkf zzkf;
        zzmv zzmv2 = zzmv;
        zza(zzmv2);
        Handler handler2 = this.zzaet;
        if (!(handler2 == null || this.zzbdn == null)) {
            handler2.post(new zzmw(this, iOException));
        }
        if (iOException instanceof zznt) {
            return 3;
        }
        boolean z = zzhu() > this.zzbek;
        if (this.zzco == -1 && ((zzkf = this.zzbdz) == null || zzkf.getDurationUs() == -9223372036854775807L)) {
            this.zzbei = 0;
            this.zzbec = this.zzags;
            int size = this.zzbdx.size();
            for (int i = 0; i < size; i++) {
                this.zzbdx.valueAt(i).zzk(!this.zzags || this.zzbef[i]);
            }
            zzmv2.zze(0, 0);
        }
        this.zzbek = zzhu();
        return z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ void zza(zzmv zzmv, long j, long j2, boolean z) {
        zza(zzmv);
        if (!z && this.zzbed > 0) {
            int size = this.zzbdx.size();
            for (int i = 0; i < size; i++) {
                this.zzbdx.valueAt(i).zzk(this.zzbef[i]);
            }
            this.zzbdy.zza((zznq) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ void zza(zzmv zzmv, long j, long j2) {
        zza(zzmv);
        this.zzbel = true;
        if (this.zzaip == -9223372036854775807L) {
            long zzhv = zzhv();
            this.zzaip = zzhv == Long.MIN_VALUE ? 0 : zzhv + 10000;
            this.zzbdo.zzb(new zzns(this.zzaip, this.zzbdz.isSeekable()), null);
        }
        this.zzbdy.zza((zznq) this);
    }
}
