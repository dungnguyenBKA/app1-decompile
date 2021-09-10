package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* access modifiers changed from: package-private */
public final class zzhk implements zzhh {
    private int repeatMode;
    private final zzhy[] zzaeq;
    private final zzoh zzaer;
    private final zzoi zzaes;
    private final Handler zzaet;
    private final zzhm zzaeu;
    private final CopyOnWriteArraySet<zzhg> zzaev;
    private final zzie zzaew;
    private final zzif zzaex;
    private boolean zzaey;
    private boolean zzaez;
    private int zzafa;
    private int zzafb;
    private int zzafc;
    private boolean zzafd;
    private zzid zzafe;
    private Object zzaff;
    private zznu zzafg;
    private zzoi zzafh;
    private zzhz zzafi;
    private zzho zzafj;
    private int zzafk;
    private int zzafl;
    private long zzafm;

    @SuppressLint({"HandlerLeak"})
    public zzhk(zzhy[] zzhyArr, zzoh zzoh, zzhx zzhx) {
        String str = zzpt.zzbkn;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        zzpg.checkState(zzhyArr.length > 0);
        this.zzaeq = (zzhy[]) zzpg.checkNotNull(zzhyArr);
        this.zzaer = (zzoh) zzpg.checkNotNull(zzoh);
        this.zzaez = false;
        this.repeatMode = 0;
        this.zzafa = 1;
        this.zzaev = new CopyOnWriteArraySet<>();
        zzoi zzoi = new zzoi(new zzog[zzhyArr.length]);
        this.zzaes = zzoi;
        this.zzafe = zzid.zzaig;
        this.zzaew = new zzie();
        this.zzaex = new zzif();
        this.zzafg = zznu.zzbgv;
        this.zzafh = zzoi;
        this.zzafi = zzhz.zzaia;
        zzhn zzhn = new zzhn(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.zzaet = zzhn;
        zzho zzho = new zzho(0, 0);
        this.zzafj = zzho;
        this.zzaeu = new zzhm(zzhyArr, zzoh, zzhx, this.zzaez, 0, zzhn, zzho, this);
    }

    private final int zzeo() {
        if (this.zzafe.isEmpty() || this.zzafb > 0) {
            return this.zzafk;
        }
        this.zzafe.zza(this.zzafj.zzagi, this.zzaex, false);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final long getBufferedPosition() {
        if (this.zzafe.isEmpty() || this.zzafb > 0) {
            return this.zzafm;
        }
        this.zzafe.zza(this.zzafj.zzagi, this.zzaex, false);
        return zzhf.zzdo(this.zzafj.zzagl) + this.zzaex.zzfh();
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final long getDuration() {
        if (this.zzafe.isEmpty()) {
            return -9223372036854775807L;
        }
        return zzhf.zzdo(this.zzafe.zza(zzeo(), this.zzaew, false).zzaip);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final int getPlaybackState() {
        return this.zzafa;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void release() {
        this.zzaeu.release();
        this.zzaet.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void seekTo(long j) {
        long j2;
        int zzeo = zzeo();
        if (zzeo < 0 || (!this.zzafe.isEmpty() && zzeo >= this.zzafe.zzff())) {
            throw new zzhu(this.zzafe, zzeo, j);
        }
        this.zzafb++;
        this.zzafk = zzeo;
        if (!this.zzafe.isEmpty()) {
            this.zzafe.zza(zzeo, this.zzaew, false);
            if (j == -9223372036854775807L) {
                j2 = 0;
            } else {
                j2 = zzhf.zzdp(j);
            }
            long j3 = j2 + 0;
            long j4 = this.zzafe.zza(0, this.zzaex, false).zzaip;
            if (j4 != -9223372036854775807L) {
                int i = (j3 > j4 ? 1 : (j3 == j4 ? 0 : -1));
            }
        }
        this.zzafl = 0;
        if (j == -9223372036854775807L) {
            this.zzafm = 0;
            this.zzaeu.zza(this.zzafe, zzeo, -9223372036854775807L);
            return;
        }
        this.zzafm = j;
        this.zzaeu.zza(this.zzafe, zzeo, zzhf.zzdp(j));
        Iterator<zzhg> it = this.zzaev.iterator();
        while (it.hasNext()) {
            it.next().zzek();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void stop() {
        this.zzaeu.stop();
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(zzhg zzhg) {
        this.zzaev.add(zzhg);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzb(zzhg zzhg) {
        this.zzaev.remove(zzhg);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final boolean zzel() {
        return this.zzaez;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final int zzem() {
        return this.zzaeq.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final long zzen() {
        if (this.zzafe.isEmpty() || this.zzafb > 0) {
            return this.zzafm;
        }
        this.zzafe.zza(this.zzafj.zzagi, this.zzaex, false);
        return zzhf.zzdo(this.zzafj.zzagk) + this.zzaex.zzfh();
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzg(boolean z) {
        if (this.zzaez != z) {
            this.zzaez = z;
            this.zzaeu.zzg(z);
            Iterator<zzhg> it = this.zzaev.iterator();
            while (it.hasNext()) {
                it.next().zza(z, this.zzafa);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(zzne zzne) {
        if (!this.zzafe.isEmpty() || this.zzaff != null) {
            this.zzafe = zzid.zzaig;
            this.zzaff = null;
            Iterator<zzhg> it = this.zzaev.iterator();
            while (it.hasNext()) {
                it.next().zza(this.zzafe, this.zzaff);
            }
        }
        if (this.zzaey) {
            this.zzaey = false;
            this.zzafg = zznu.zzbgv;
            this.zzafh = this.zzaes;
            this.zzaer.zzd(null);
            Iterator<zzhg> it2 = this.zzaev.iterator();
            while (it2.hasNext()) {
                it2.next().zza(this.zzafg, this.zzafh);
            }
        }
        this.zzafc++;
        this.zzaeu.zza(zzne, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzb(zzhi... zzhiArr) {
        this.zzaeu.zzb(zzhiArr);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(zzhi... zzhiArr) {
        this.zzaeu.zza(zzhiArr);
    }

    /* access modifiers changed from: package-private */
    public final void zza(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.zzafc--;
                return;
            case 1:
                this.zzafa = message.arg1;
                Iterator<zzhg> it = this.zzaev.iterator();
                while (it.hasNext()) {
                    it.next().zza(this.zzaez, this.zzafa);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.zzafd = z;
                Iterator<zzhg> it2 = this.zzaev.iterator();
                while (it2.hasNext()) {
                    it2.next().zzf(this.zzafd);
                }
                return;
            case 3:
                if (this.zzafc == 0) {
                    zzoj zzoj = (zzoj) message.obj;
                    this.zzaey = true;
                    this.zzafg = zzoj.zzbhx;
                    this.zzafh = zzoj.zzbhy;
                    this.zzaer.zzd(zzoj.zzbhz);
                    Iterator<zzhg> it3 = this.zzaev.iterator();
                    while (it3.hasNext()) {
                        it3.next().zza(this.zzafg, this.zzafh);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.zzafb - 1;
                this.zzafb = i;
                if (i == 0) {
                    this.zzafj = (zzho) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<zzhg> it4 = this.zzaev.iterator();
                        while (it4.hasNext()) {
                            it4.next().zzek();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.zzafb == 0) {
                    this.zzafj = (zzho) message.obj;
                    Iterator<zzhg> it5 = this.zzaev.iterator();
                    while (it5.hasNext()) {
                        it5.next().zzek();
                    }
                    return;
                }
                return;
            case 6:
                zzhq zzhq = (zzhq) message.obj;
                this.zzafb -= zzhq.zzagx;
                if (this.zzafc == 0) {
                    this.zzafe = zzhq.zzafe;
                    this.zzaff = zzhq.zzaff;
                    this.zzafj = zzhq.zzafj;
                    Iterator<zzhg> it6 = this.zzaev.iterator();
                    while (it6.hasNext()) {
                        it6.next().zza(this.zzafe, this.zzaff);
                    }
                    return;
                }
                return;
            case 7:
                zzhz zzhz = (zzhz) message.obj;
                if (!this.zzafi.equals(zzhz)) {
                    this.zzafi = zzhz;
                    Iterator<zzhg> it7 = this.zzaev.iterator();
                    while (it7.hasNext()) {
                        it7.next().zza(zzhz);
                    }
                    return;
                }
                return;
            case 8:
                zzhe zzhe = (zzhe) message.obj;
                Iterator<zzhg> it8 = this.zzaev.iterator();
                while (it8.hasNext()) {
                    it8.next().zza(zzhe);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
