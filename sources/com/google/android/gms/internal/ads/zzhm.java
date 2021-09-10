package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;

/* access modifiers changed from: package-private */
public final class zzhm implements Handler.Callback, zznb, zznd, zzok {
    private final Handler handler;
    private int repeatMode = 0;
    private int state;
    private final zzhy[] zzaeq;
    private final zzoh zzaer;
    private final Handler zzaet;
    private final zzie zzaew;
    private final zzif zzaex;
    private boolean zzaez;
    private boolean zzafd;
    private zzid zzafe;
    private zzhz zzafi;
    private zzho zzafj;
    private final zzib[] zzafn;
    private final zzhx zzafo;
    private final zzps zzafp;
    private final HandlerThread zzafq;
    private final zzhh zzafr;
    private zzhy zzafs;
    private zzpk zzaft;
    private zzne zzafu;
    private zzhy[] zzafv;
    private boolean zzafw;
    private boolean zzafx;
    private int zzafy;
    private int zzafz;
    private long zzaga;
    private int zzagb;
    private zzhr zzagc;
    private long zzagd;
    private zzhp zzage;
    private zzhp zzagf;
    private zzhp zzagg;

    public zzhm(zzhy[] zzhyArr, zzoh zzoh, zzhx zzhx, boolean z, int i, Handler handler2, zzho zzho, zzhh zzhh) {
        this.zzaeq = zzhyArr;
        this.zzaer = zzoh;
        this.zzafo = zzhx;
        this.zzaez = z;
        this.zzaet = handler2;
        this.state = 1;
        this.zzafj = zzho;
        this.zzafr = zzhh;
        this.zzafn = new zzib[zzhyArr.length];
        for (int i2 = 0; i2 < zzhyArr.length; i2++) {
            zzhyArr[i2].setIndex(i2);
            this.zzafn[i2] = zzhyArr[i2].zzdz();
        }
        this.zzafp = new zzps();
        this.zzafv = new zzhy[0];
        this.zzaew = new zzie();
        this.zzaex = new zzif();
        zzoh.zza(this);
        this.zzafi = zzhz.zzaia;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.zzafq = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper(), this);
    }

    private final void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.zzaet.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final Pair<Integer, Long> zzc(int i, long j) {
        return zzb(this.zzafe, 0, -9223372036854775807L);
    }

    private final void zzdq(long j) {
        long j2;
        zzhp zzhp = this.zzagg;
        if (zzhp == null) {
            j2 = 60000000;
        } else {
            j2 = zzhp.zzew();
        }
        long j3 = j + j2;
        this.zzagd = j3;
        this.zzafp.zzel(j3);
        for (zzhy zzhy : this.zzafv) {
            zzhy.zzdm(this.zzagd);
        }
    }

    private final boolean zzdr(long j) {
        if (j == -9223372036854775807L || this.zzafj.zzagk < j) {
            return true;
        }
        zzhp zzhp = this.zzagg.zzagu;
        return zzhp != null && zzhp.zzags;
    }

    private final void zzeq() {
        this.zzafx = false;
        this.zzafp.start();
        for (zzhy zzhy : this.zzafv) {
            zzhy.start();
        }
    }

    private final void zzer() {
        this.zzafp.stop();
        for (zzhy zzhy : this.zzafv) {
            zza(zzhy);
        }
    }

    private final void zzes() {
        long j;
        zzhp zzhp = this.zzagg;
        if (zzhp != null) {
            long zzhq = zzhp.zzagm.zzhq();
            if (zzhq != -9223372036854775807L) {
                zzdq(zzhq);
            } else {
                zzhy zzhy = this.zzafs;
                if (zzhy == null || zzhy.zzfe()) {
                    this.zzagd = this.zzafp.zzgc();
                } else {
                    long zzgc = this.zzaft.zzgc();
                    this.zzagd = zzgc;
                    this.zzafp.zzel(zzgc);
                }
                zzhq = this.zzagd - this.zzagg.zzew();
            }
            this.zzafj.zzagk = zzhq;
            this.zzaga = SystemClock.elapsedRealtime() * 1000;
            if (this.zzafv.length == 0) {
                j = Long.MIN_VALUE;
            } else {
                j = this.zzagg.zzagm.zzhr();
            }
            zzho zzho = this.zzafj;
            if (j == Long.MIN_VALUE) {
                j = this.zzafe.zza(this.zzagg.zzagi, this.zzaex, false).zzaip;
            }
            zzho.zzagl = j;
        }
    }

    private final void zzet() {
        zzi(true);
        this.zzafo.onStopped();
        setState(1);
    }

    private final void zzeu() {
        zzhp zzhp = this.zzage;
        if (!(zzhp == null || zzhp.zzags)) {
            zzhp zzhp2 = this.zzagf;
            if (zzhp2 == null || zzhp2.zzagu == zzhp) {
                for (zzhy zzhy : this.zzafv) {
                    if (!zzhy.zzec()) {
                        return;
                    }
                }
                this.zzage.zzagm.zzho();
            }
        }
    }

    private final void zzev() {
        long j;
        zzhp zzhp = this.zzage;
        if (!zzhp.zzags) {
            j = 0;
        } else {
            j = zzhp.zzagm.zzhn();
        }
        if (j == Long.MIN_VALUE) {
            zzh(false);
            return;
        }
        long zzew = this.zzagd - this.zzage.zzew();
        boolean zzdt = this.zzafo.zzdt(j - zzew);
        zzh(zzdt);
        if (zzdt) {
            this.zzage.zzagm.zzee(zzew);
        }
    }

    private final void zzh(boolean z) {
        if (this.zzafd != z) {
            this.zzafd = z;
            this.zzaet.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private final void zzi(boolean z) {
        this.handler.removeMessages(2);
        this.zzafx = false;
        this.zzafp.stop();
        this.zzaft = null;
        this.zzafs = null;
        this.zzagd = 60000000;
        zzhy[] zzhyArr = this.zzafv;
        for (zzhy zzhy : zzhyArr) {
            try {
                zza(zzhy);
                zzhy.disable();
            } catch (zzhe | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.zzafv = new zzhy[0];
        zzhp zzhp = this.zzagg;
        if (zzhp == null) {
            zzhp = this.zzage;
        }
        zza(zzhp);
        this.zzage = null;
        this.zzagf = null;
        this.zzagg = null;
        zzh(false);
        if (z) {
            zzne zzne = this.zzafu;
            if (zzne != null) {
                zzne.zzia();
                this.zzafu = null;
            }
            this.zzafe = null;
        }
    }

    private final boolean zzu(int i) {
        this.zzafe.zza(i, this.zzaex, false);
        this.zzafe.zza(0, this.zzaew, false);
        if (this.zzafe.zza(i, this.zzaex, this.zzaew, this.repeatMode) == -1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r34v0, types: [com.google.android.gms.internal.ads.zzhm, java.lang.Object, com.google.android.gms.internal.ads.zznd, com.google.android.gms.internal.ads.zznb] */
    /* JADX WARN: Type inference failed for: r9v0, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r1v32, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r3v18, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r2v56, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r2v63, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r2v64, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r7v19, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r1v94, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r3v50, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r3v51, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r3v52, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r2v84, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r6v25, types: [com.google.android.gms.internal.ads.zzid] */
    /* JADX WARN: Type inference failed for: r2v108, types: [com.google.android.gms.internal.ads.zzhp] */
    /* JADX WARN: Type inference failed for: r3v82, types: [com.google.android.gms.internal.ads.zzhp] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARNING: Code restructure failed: missing block: B:476:0x082f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:477:0x0830, code lost:
        r1 = r0;
        r3 = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:478:0x0834, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:479:0x0835, code lost:
        r1 = r0;
        r3 = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:480:0x0839, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:481:0x083a, code lost:
        android.util.Log.e("ExoPlayerImplInternal", "Internal runtime error.", r0);
        r34.zzaet.obtainMessage(8, com.google.android.gms.internal.ads.zzhe.zza(r0)).sendToTarget();
        zzet();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:482:0x0854, code lost:
        return true;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x0263  */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x0267  */
    /* JADX WARNING: Removed duplicated region for block: B:196:0x0323  */
    /* JADX WARNING: Removed duplicated region for block: B:197:0x0337  */
    /* JADX WARNING: Removed duplicated region for block: B:289:0x04ed  */
    /* JADX WARNING: Removed duplicated region for block: B:291:0x04f4  */
    /* JADX WARNING: Removed duplicated region for block: B:294:0x050c  */
    /* JADX WARNING: Removed duplicated region for block: B:295:0x050f  */
    /* JADX WARNING: Removed duplicated region for block: B:298:0x0548  */
    /* JADX WARNING: Removed duplicated region for block: B:302:0x0558  */
    /* JADX WARNING: Removed duplicated region for block: B:312:0x0572 A[LOOP:7: B:312:0x0572->B:316:0x0582, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x005e A[Catch:{ zzhe -> 0x0834, IOException -> 0x082f, RuntimeException -> 0x0839 }] */
    /* JADX WARNING: Removed duplicated region for block: B:422:0x0766  */
    /* JADX WARNING: Removed duplicated region for block: B:480:0x0839 A[ExcHandler: RuntimeException (r0v2 'e' java.lang.RuntimeException A[CUSTOM_DECLARE]), Splitter:B:1:0x0005] */
    /* JADX WARNING: Unknown variable types count: 16 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean handleMessage(android.os.Message r35) {
        /*
        // Method dump skipped, instructions count: 2216
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhm.handleMessage(android.os.Message):boolean");
    }

    public final synchronized void release() {
        if (!this.zzafw) {
            this.handler.sendEmptyMessage(6);
            while (!this.zzafw) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            this.zzafq.quit();
        }
    }

    public final void stop() {
        this.handler.sendEmptyMessage(5);
    }

    public final void zza(zzne zzne, boolean z) {
        this.handler.obtainMessage(0, 1, 0, zzne).sendToTarget();
    }

    public final synchronized void zzb(zzhi... zzhiArr) {
        if (this.zzafw) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        int i = this.zzafy;
        this.zzafy = i + 1;
        this.handler.obtainMessage(11, zzhiArr).sendToTarget();
        while (this.zzafz <= i) {
            try {
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzok
    public final void zzep() {
        this.handler.sendEmptyMessage(10);
    }

    public final void zzg(boolean z) {
        this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void zza(zzid zzid, int i, long j) {
        this.handler.obtainMessage(3, new zzhr(zzid, i, j)).sendToTarget();
    }

    public final void zza(zzhi... zzhiArr) {
        if (this.zzafw) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.zzafy++;
        this.handler.obtainMessage(11, zzhiArr).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zznb
    public final void zza(zznc zznc) {
        this.handler.obtainMessage(8, zznc).sendToTarget();
    }

    private final void zza(long j, long j2) {
        this.handler.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(2);
        } else {
            this.handler.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznd
    public final void zzb(zzid zzid, Object obj) {
        this.handler.obtainMessage(7, Pair.create(zzid, obj)).sendToTarget();
    }

    private final long zzb(int i, long j) {
        zzhp zzhp;
        zzer();
        this.zzafx = false;
        setState(2);
        zzhp zzhp2 = this.zzagg;
        if (zzhp2 == null) {
            zzhp zzhp3 = this.zzage;
            if (zzhp3 != null) {
                zzhp3.release();
            }
            zzhp = null;
        } else {
            zzhp = null;
            while (zzhp2 != null) {
                if (zzhp2.zzagi != i || !zzhp2.zzags) {
                    zzhp2.release();
                } else {
                    zzhp = zzhp2;
                }
                zzhp2 = zzhp2.zzagu;
            }
        }
        zzhp zzhp4 = this.zzagg;
        if (!(zzhp4 == zzhp && zzhp4 == this.zzagf)) {
            for (zzhy zzhy : this.zzafv) {
                zzhy.disable();
            }
            this.zzafv = new zzhy[0];
            this.zzaft = null;
            this.zzafs = null;
            this.zzagg = null;
        }
        if (zzhp != null) {
            zzhp.zzagu = null;
            this.zzage = zzhp;
            this.zzagf = zzhp;
            zzb(zzhp);
            zzhp zzhp5 = this.zzagg;
            if (zzhp5.zzagt) {
                j = zzhp5.zzagm.zzeg(j);
            }
            zzdq(j);
            zzev();
        } else {
            this.zzage = null;
            this.zzagf = null;
            this.zzagg = null;
            zzdq(j);
        }
        this.handler.sendEmptyMessage(2);
        return j;
    }

    private static void zza(zzhy zzhy) {
        if (zzhy.getState() == 2) {
            zzhy.stop();
        }
    }

    private final void zza(Object obj, int i) {
        this.zzafj = new zzho(0, 0);
        zzb(obj, i);
        this.zzafj = new zzho(0, -9223372036854775807L);
        setState(4);
        zzi(false);
    }

    private final int zza(int i, zzid zzid, zzid zzid2) {
        int zzfg = zzid.zzfg();
        int i2 = -1;
        for (int i3 = 0; i3 < zzfg && i2 == -1; i3++) {
            i = zzid.zza(i, this.zzaex, this.zzaew, this.repeatMode);
            i2 = zzid2.zzc(zzid.zza(i, this.zzaex, true).zzagn);
        }
        return i2;
    }

    private final Pair<Integer, Long> zza(zzhr zzhr) {
        zzid zzid = zzhr.zzafe;
        if (zzid.isEmpty()) {
            zzid = this.zzafe;
        }
        try {
            Pair<Integer, Long> zzb = zzb(zzid, zzhr.zzagy, zzhr.zzagz);
            zzid zzid2 = this.zzafe;
            if (zzid2 == zzid) {
                return zzb;
            }
            int zzc = zzid2.zzc(zzid.zza(((Integer) zzb.first).intValue(), this.zzaex, true).zzagn);
            if (zzc != -1) {
                return Pair.create(Integer.valueOf(zzc), (Long) zzb.second);
            }
            int zza = zza(((Integer) zzb.first).intValue(), zzid, this.zzafe);
            if (zza == -1) {
                return null;
            }
            this.zzafe.zza(zza, this.zzaex, false);
            return zzc(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzhu(this.zzafe, zzhr.zzagy, zzhr.zzagz);
        }
    }

    private final Pair<Integer, Long> zza(zzid zzid, int i, long j, long j2) {
        zzpg.zzc(i, 0, zzid.zzff());
        zzid.zza(i, this.zzaew, false, j2);
        if (j == -9223372036854775807L) {
            j = 0;
        }
        long j3 = j + 0;
        long j4 = zzid.zza(0, this.zzaex, false).zzaip;
        if (j4 != -9223372036854775807L) {
            int i2 = (j3 > j4 ? 1 : (j3 == j4 ? 0 : -1));
        }
        return Pair.create(0, Long.valueOf(j3));
    }

    private final void zzb(Object obj, int i) {
        this.zzaet.obtainMessage(6, new zzhq(this.zzafe, obj, this.zzafj, i)).sendToTarget();
    }

    private final Pair<Integer, Long> zzb(zzid zzid, int i, long j) {
        return zza(zzid, i, j, 0);
    }

    private final void zzb(zzhp zzhp) {
        if (this.zzagg != zzhp) {
            boolean[] zArr = new boolean[this.zzaeq.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                zzhy[] zzhyArr = this.zzaeq;
                if (i < zzhyArr.length) {
                    zzhy zzhy = zzhyArr[i];
                    zArr[i] = zzhy.getState() != 0;
                    zzog zzbe = zzhp.zzagv.zzbhy.zzbe(i);
                    if (zzbe != null) {
                        i2++;
                    }
                    if (zArr[i] && (zzbe == null || (zzhy.zzee() && zzhy.zzeb() == this.zzagg.zzago[i]))) {
                        if (zzhy == this.zzafs) {
                            this.zzafp.zza(this.zzaft);
                            this.zzaft = null;
                            this.zzafs = null;
                        }
                        zza(zzhy);
                        zzhy.disable();
                    }
                    i++;
                } else {
                    this.zzagg = zzhp;
                    this.zzaet.obtainMessage(3, zzhp.zzagv).sendToTarget();
                    zza(zArr, i2);
                    return;
                }
            }
        }
    }

    private static void zza(zzhp zzhp) {
        while (zzhp != null) {
            zzhp.release();
            zzhp = zzhp.zzagu;
        }
    }

    private final void zza(boolean[] zArr, int i) {
        this.zzafv = new zzhy[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzhy[] zzhyArr = this.zzaeq;
            if (i2 < zzhyArr.length) {
                zzhy zzhy = zzhyArr[i2];
                zzog zzbe = this.zzagg.zzagv.zzbhy.zzbe(i2);
                if (zzbe != null) {
                    int i4 = i3 + 1;
                    this.zzafv[i3] = zzhy;
                    if (zzhy.getState() == 0) {
                        zzia zzia = this.zzagg.zzagv.zzbia[i2];
                        boolean z = this.zzaez && this.state == 3;
                        boolean z2 = !zArr[i2] && z;
                        int length = zzbe.length();
                        zzht[] zzhtArr = new zzht[length];
                        for (int i5 = 0; i5 < length; i5++) {
                            zzhtArr[i5] = zzbe.zzbb(i5);
                        }
                        zzhp zzhp = this.zzagg;
                        zzhy.zza(zzia, zzhtArr, zzhp.zzago[i2], this.zzagd, z2, zzhp.zzew());
                        zzpk zzea = zzhy.zzea();
                        if (zzea != null) {
                            if (this.zzaft == null) {
                                this.zzaft = zzea;
                                this.zzafs = zzhy;
                                zzea.zzb(this.zzafi);
                            } else {
                                throw zzhe.zza(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                        }
                        if (z) {
                            zzhy.start();
                        }
                    }
                    i3 = i4;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zznq] */
    @Override // com.google.android.gms.internal.ads.zznp
    public final /* synthetic */ void zza(zznc zznc) {
        this.handler.obtainMessage(9, zznc).sendToTarget();
    }
}
