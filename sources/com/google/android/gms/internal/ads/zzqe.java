package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzqe extends zzlv {
    private static final int[] zzbld = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private final Context context;
    private int zzaif;
    private boolean zzalq;
    private final zzqi zzble;
    private final zzqj zzblf;
    private final long zzblg;
    private final int zzblh;
    private final boolean zzbli;
    private final long[] zzblj;
    private zzht[] zzblk;
    private zzqg zzbll;
    private Surface zzblm;
    private Surface zzbln;
    private int zzblo;
    private boolean zzblp;
    private long zzblq;
    private long zzblr;
    private int zzbls;
    private int zzblt;
    private int zzblu;
    private float zzblv;
    private int zzblw;
    private int zzblx;
    private int zzbly;
    private float zzblz;
    private int zzbma;
    private int zzbmb;
    private int zzbmc;
    private float zzbmd;
    zzqf zzbme;
    private long zzbmf;
    private int zzbmg;

    public zzqe(Context context2, zzlx zzlx, long j, Handler handler, zzqk zzqk, int i) {
        this(context2, zzlx, 0, null, false, handler, zzqk, -1);
    }

    private final void zzb(MediaCodec mediaCodec, int i, long j) {
        zzjm();
        zzpu.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzpu.endSection();
        this.zzbcq.zzaod++;
        this.zzblt = 0;
        zzjk();
    }

    private static boolean zzem(long j) {
        return j < -30000;
    }

    private static int zzi(zzht zzht) {
        int i = zzht.zzahf;
        if (i != -1) {
            return i;
        }
        return zza(zzht.zzahe, zzht.width, zzht.height);
    }

    private static int zzj(zzht zzht) {
        int i = zzht.zzahj;
        if (i == -1) {
            return 0;
        }
        return i;
    }

    private final void zzji() {
        this.zzblq = -9223372036854775807L;
    }

    private final void zzjj() {
        MediaCodec zzhd;
        this.zzblp = false;
        if (zzpt.SDK_INT >= 23 && this.zzalq && (zzhd = zzhd()) != null) {
            this.zzbme = new zzqf(this, zzhd);
        }
    }

    private final void zzjl() {
        this.zzbma = -1;
        this.zzbmb = -1;
        this.zzbmd = -1.0f;
        this.zzbmc = -1;
    }

    private final void zzjm() {
        int i = this.zzbma;
        int i2 = this.zzblw;
        if (i != i2 || this.zzbmb != this.zzblx || this.zzbmc != this.zzbly || this.zzbmd != this.zzblz) {
            this.zzblf.zza(i2, this.zzblx, this.zzbly, this.zzblz);
            this.zzbma = this.zzblw;
            this.zzbmb = this.zzblx;
            this.zzbmc = this.zzbly;
            this.zzbmd = this.zzblz;
        }
    }

    private final void zzjn() {
        if (this.zzbma != -1 || this.zzbmb != -1) {
            this.zzblf.zza(this.zzblw, this.zzblx, this.zzbly, this.zzblz);
        }
    }

    private final void zzjo() {
        if (this.zzbls > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzblf.zzf(this.zzbls, elapsedRealtime - this.zzblr);
            this.zzbls = 0;
            this.zzblr = elapsedRealtime;
        }
    }

    private final boolean zzn(boolean z) {
        if (zzpt.SDK_INT < 23 || this.zzalq) {
            return false;
        }
        return !z || zzqa.zzc(this.context);
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.zzblp || (((surface = this.zzbln) != null && this.zzblm == surface) || zzhd() == null))) {
            this.zzblq = -9223372036854775807L;
            return true;
        } else if (this.zzblq == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.zzblq) {
                return true;
            }
            this.zzblq = -9223372036854775807L;
            return false;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i;
        int i2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            i = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            i = mediaFormat.getInteger("width");
        }
        this.zzblw = i;
        if (z) {
            i2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            i2 = mediaFormat.getInteger("height");
        }
        this.zzblx = i2;
        float f = this.zzblv;
        this.zzblz = f;
        if (zzpt.SDK_INT >= 21) {
            int i3 = this.zzblu;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.zzblw;
                this.zzblw = i2;
                this.zzblx = i4;
                this.zzblz = 1.0f / f;
            }
        } else {
            this.zzbly = this.zzblu;
        }
        mediaCodec.setVideoScalingMode(this.zzblo);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void onStarted() {
        super.onStarted();
        this.zzbls = 0;
        this.zzblr = SystemClock.elapsedRealtime();
        this.zzblq = -9223372036854775807L;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void onStopped() {
        zzjo();
        super.onStopped();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final int zza(zzlx zzlx, zzht zzht) {
        boolean z;
        int i;
        int i2;
        String str = zzht.zzahe;
        int i3 = 0;
        if (!zzpj.zzbd(str)) {
            return 0;
        }
        zzjo zzjo = zzht.zzahh;
        if (zzjo != null) {
            z = false;
            for (int i4 = 0; i4 < zzjo.zzaoj; i4++) {
                z |= zzjo.zzac(i4).zzaon;
            }
        } else {
            z = false;
        }
        zzlw zzc = zzlx.zzc(str, z);
        boolean z2 = true;
        if (zzc == null) {
            return 1;
        }
        boolean zzaz = zzc.zzaz(zzht.zzahb);
        if (zzaz && (i = zzht.width) > 0 && (i2 = zzht.height) > 0) {
            if (zzpt.SDK_INT >= 21) {
                zzaz = zzc.zza(i, i2, (double) zzht.zzahi);
            } else {
                if (i * i2 > zzlz.zzhk()) {
                    z2 = false;
                }
                if (!z2) {
                    String.valueOf(zzpt.zzbkn).length();
                }
                zzaz = z2;
            }
        }
        int i5 = zzc.zzbcr ? 8 : 4;
        if (zzc.zzalq) {
            i3 = 16;
        }
        return (zzaz ? 3 : 2) | i5 | i3;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzc(String str, long j, long j2) {
        this.zzblf.zza(str, j, j2);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzd(zzht zzht) {
        super.zzd(zzht);
        this.zzblf.zzb(zzht);
        float f = zzht.zzahk;
        if (f == -1.0f) {
            f = 1.0f;
        }
        this.zzblv = f;
        this.zzblu = zzj(zzht);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zze(boolean z) {
        super.zze(z);
        int i = zzei().zzaif;
        this.zzaif = i;
        this.zzalq = i != 0;
        this.zzblf.zza(this.zzbcq);
        this.zzble.enable();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zzeh() {
        this.zzblw = -1;
        this.zzblx = -1;
        this.zzblz = -1.0f;
        this.zzblv = -1.0f;
        this.zzbmf = -9223372036854775807L;
        this.zzbmg = 0;
        zzjl();
        zzjj();
        this.zzble.disable();
        this.zzbme = null;
        this.zzalq = false;
        try {
            super.zzeh();
        } finally {
            this.zzbcq.zzgn();
            this.zzblf.zzb(this.zzbcq);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzhf() {
        try {
            super.zzhf();
            Surface surface = this.zzbln;
            if (surface != null) {
                if (this.zzblm == surface) {
                    this.zzblm = null;
                }
                surface.release();
                this.zzbln = null;
            }
        } catch (Throwable th) {
            if (this.zzbln != null) {
                Surface surface2 = this.zzblm;
                Surface surface3 = this.zzbln;
                if (surface2 == surface3) {
                    this.zzblm = null;
                }
                surface3.release();
                this.zzbln = null;
            }
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzjk() {
        if (!this.zzblp) {
            this.zzblp = true;
            this.zzblf.zza(this.zzblm);
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    private zzqe(Context context2, zzlx zzlx, long j, zzjt<zzjv> zzjt, boolean z, Handler handler, zzqk zzqk, int i) {
        super(2, zzlx, null, false);
        boolean z2 = false;
        this.zzblg = 0;
        this.zzblh = -1;
        this.context = context2.getApplicationContext();
        this.zzble = new zzqi(context2);
        this.zzblf = new zzqj(handler, zzqk);
        if (zzpt.SDK_INT <= 22 && "foster".equals(zzpt.DEVICE) && "NVIDIA".equals(zzpt.MANUFACTURER)) {
            z2 = true;
        }
        this.zzbli = z2;
        this.zzblj = new long[10];
        this.zzbmf = -9223372036854775807L;
        this.zzblq = -9223372036854775807L;
        this.zzblw = -1;
        this.zzblx = -1;
        this.zzblz = -1.0f;
        this.zzblv = -1.0f;
        this.zzblo = 1;
        zzjl();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zza(zzht[] zzhtArr, long j) {
        this.zzblk = zzhtArr;
        if (this.zzbmf == -9223372036854775807L) {
            this.zzbmf = j;
        } else {
            int i = this.zzbmg;
            long[] jArr = this.zzblj;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                Log.w("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.zzbmg = i + 1;
            }
            this.zzblj[this.zzbmg - 1] = j;
        }
        super.zza(zzhtArr, j);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zza(long j, boolean z) {
        super.zza(j, z);
        zzjj();
        this.zzblt = 0;
        int i = this.zzbmg;
        if (i != 0) {
            this.zzbmf = this.zzblj[i - 1];
            this.zzbmg = 0;
        }
        if (z) {
            zzji();
        } else {
            this.zzblq = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhj
    public final void zza(int i, Object obj) {
        if (i == 1) {
            Surface surface = (Surface) obj;
            if (surface == null) {
                Surface surface2 = this.zzbln;
                if (surface2 != null) {
                    surface = surface2;
                } else {
                    zzlw zzhe = zzhe();
                    if (zzhe != null && zzn(zzhe.zzbcs)) {
                        surface = zzqa.zzc(this.context, zzhe.zzbcs);
                        this.zzbln = surface;
                    }
                }
            }
            if (this.zzblm != surface) {
                this.zzblm = surface;
                int state = getState();
                if (state == 1 || state == 2) {
                    MediaCodec zzhd = zzhd();
                    if (zzpt.SDK_INT < 23 || zzhd == null || surface == null) {
                        zzhf();
                        zzhc();
                    } else {
                        zzhd.setOutputSurface(surface);
                    }
                }
                if (surface == null || surface == this.zzbln) {
                    zzjl();
                    zzjj();
                    return;
                }
                zzjn();
                zzjj();
                if (state == 2) {
                    zzji();
                }
            } else if (surface != null && surface != this.zzbln) {
                zzjn();
                if (this.zzblp) {
                    this.zzblf.zza(this.zzblm);
                }
            }
        } else if (i == 4) {
            this.zzblo = ((Integer) obj).intValue();
            MediaCodec zzhd2 = zzhd();
            if (zzhd2 != null) {
                zzhd2.setVideoScalingMode(this.zzblo);
            }
        } else {
            super.zza(i, obj);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zza(zzlw zzlw) {
        return this.zzblm != null || zzn(zzlw.zzbcs);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zza(zzlw zzlw, MediaCodec mediaCodec, zzht zzht, MediaCrypto mediaCrypto) {
        zzqg zzqg;
        String str;
        String str2;
        Point point;
        zzht[] zzhtArr = this.zzblk;
        int i = zzht.width;
        int i2 = zzht.height;
        int zzi = zzi(zzht);
        if (zzhtArr.length == 1) {
            zzqg = new zzqg(i, i2, zzi);
        } else {
            boolean z = false;
            for (zzht zzht2 : zzhtArr) {
                if (zza(zzlw.zzbcr, zzht, zzht2)) {
                    int i3 = zzht2.width;
                    z |= i3 == -1 || zzht2.height == -1;
                    i = Math.max(i, i3);
                    i2 = Math.max(i2, zzht2.height);
                    zzi = Math.max(zzi, zzi(zzht2));
                }
            }
            if (z) {
                String str3 = "x";
                String str4 = "MediaCodecVideoRenderer";
                Log.w(str4, ic.c(66, "Resolutions unknown. Codec max resolution: ", i, str3, i2));
                int i4 = zzht.height;
                int i5 = zzht.width;
                boolean z2 = i4 > i5;
                int i6 = z2 ? i4 : i5;
                if (z2) {
                    i4 = i5;
                }
                float f = ((float) i4) / ((float) i6);
                int[] iArr = zzbld;
                int length = iArr.length;
                int i7 = 0;
                while (true) {
                    if (i7 >= length) {
                        break;
                    }
                    int i8 = iArr[i7];
                    int i9 = (int) (((float) i8) * f);
                    if (i8 <= i6 || i9 <= i4) {
                        break;
                    }
                    if (zzpt.SDK_INT >= 21) {
                        int i10 = z2 ? i9 : i8;
                        if (!z2) {
                            i8 = i9;
                        }
                        point = zzlw.zzd(i10, i8);
                        str = str4;
                        str2 = str3;
                        if (zzlw.zza(point.x, point.y, (double) zzht.zzahi)) {
                            break;
                        }
                    } else {
                        str = str4;
                        str2 = str3;
                        int zzf = zzpt.zzf(i8, 16) << 4;
                        int zzf2 = zzpt.zzf(i9, 16) << 4;
                        if (zzf * zzf2 <= zzlz.zzhk()) {
                            int i11 = z2 ? zzf2 : zzf;
                            if (!z2) {
                                zzf = zzf2;
                            }
                            point = new Point(i11, zzf);
                        }
                    }
                    i7++;
                    length = length;
                    iArr = iArr;
                    i4 = i4;
                    f = f;
                    str3 = str2;
                    str4 = str;
                }
                str = str4;
                str2 = str3;
                point = null;
                if (point != null) {
                    i = Math.max(i, point.x);
                    i2 = Math.max(i2, point.y);
                    zzi = Math.max(zzi, zza(zzht.zzahe, i, i2));
                    Log.w(str, ic.c(57, "Codec max resolution adjusted to: ", i, str2, i2));
                }
            }
            zzqg = new zzqg(i, i2, zzi);
        }
        this.zzbll = zzqg;
        boolean z3 = this.zzbli;
        int i12 = this.zzaif;
        MediaFormat zzfa = zzht.zzfa();
        zzfa.setInteger("max-width", zzqg.width);
        zzfa.setInteger("max-height", zzqg.height);
        int i13 = zzqg.zzbmi;
        if (i13 != -1) {
            zzfa.setInteger("max-input-size", i13);
        }
        if (z3) {
            zzfa.setInteger("auto-frc", 0);
        }
        if (i12 != 0) {
            zzfa.setFeatureEnabled("tunneled-playback", true);
            zzfa.setInteger("audio-session-id", i12);
        }
        if (this.zzblm == null) {
            zzpg.checkState(zzn(zzlw.zzbcs));
            if (this.zzbln == null) {
                this.zzbln = zzqa.zzc(this.context, zzlw.zzbcs);
            }
            this.zzblm = this.zzbln;
        }
        mediaCodec.configure(zzfa, this.zzblm, (MediaCrypto) null, 0);
        if (zzpt.SDK_INT >= 23 && this.zzalq) {
            this.zzbme = new zzqf(this, mediaCodec);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zza(zzjp zzjp) {
        if (zzpt.SDK_INT < 23 && this.zzalq) {
            zzjk();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zza(MediaCodec mediaCodec, boolean z, zzht zzht, zzht zzht2) {
        if (!zza(z, zzht, zzht2)) {
            return false;
        }
        int i = zzht2.width;
        zzqg zzqg = this.zzbll;
        return i <= zzqg.width && zzht2.height <= zzqg.height && zzht2.zzahf <= zzqg.zzbmi;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.zzbmg;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.zzblj;
            if (j3 < jArr[0]) {
                break;
            }
            this.zzbmf = jArr[0];
            int i4 = i3 - 1;
            this.zzbmg = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j4 = j3 - this.zzbmf;
        if (z) {
            zza(mediaCodec, i, j4);
            return true;
        }
        long j5 = j3 - j;
        if (this.zzblm == this.zzbln) {
            if (!zzem(j5)) {
                return false;
            }
            zza(mediaCodec, i, j4);
            return true;
        } else if (!this.zzblp) {
            if (zzpt.SDK_INT >= 21) {
                zza(mediaCodec, i, j4, System.nanoTime());
            } else {
                zzb(mediaCodec, i, j4);
            }
            return true;
        } else if (getState() != 2) {
            return false;
        } else {
            long elapsedRealtime = j5 - ((SystemClock.elapsedRealtime() * 1000) - j2);
            long nanoTime = System.nanoTime();
            long zzf = this.zzble.zzf(j3, (elapsedRealtime * 1000) + nanoTime);
            long j6 = (zzf - nanoTime) / 1000;
            if (zzem(j6)) {
                zzpu.beginSection("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                zzpu.endSection();
                zzjm zzjm = this.zzbcq;
                zzjm.zzaof++;
                this.zzbls++;
                int i5 = this.zzblt + 1;
                this.zzblt = i5;
                zzjm.zzaog = Math.max(i5, zzjm.zzaog);
                if (this.zzbls == this.zzblh) {
                    zzjo();
                }
                return true;
            }
            if (zzpt.SDK_INT >= 21) {
                if (j6 < 50000) {
                    zza(mediaCodec, i, j4, zzf);
                    return true;
                }
            } else if (j6 < 30000) {
                if (j6 > 11000) {
                    try {
                        Thread.sleep((j6 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                zzb(mediaCodec, i, j4);
                return true;
            }
            return false;
        }
    }

    private final void zza(MediaCodec mediaCodec, int i, long j) {
        zzpu.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzpu.endSection();
        this.zzbcq.zzaoe++;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    private final void zza(MediaCodec mediaCodec, int i, long j, long j2) {
        zzjm();
        zzpu.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzpu.endSection();
        this.zzbcq.zzaod++;
        this.zzblt = 0;
        zzjk();
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    private static int zza(String str, int i, int i2) {
        char c;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        int i4 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 2:
            case 4:
                i3 = i * i2;
                i4 = 2;
                break;
            case 1:
            case 5:
                i3 = i * i2;
                break;
            case 3:
                if (!"BRAVIA 4K 2015".equals(zzpt.MODEL)) {
                    i3 = ((zzpt.zzf(i2, 16) * zzpt.zzf(i, 16)) << 4) << 4;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    private static boolean zza(boolean z, zzht zzht, zzht zzht2) {
        if (!zzht.zzahe.equals(zzht2.zzahe) || zzj(zzht) != zzj(zzht2)) {
            return false;
        }
        if (!z) {
            return zzht.width == zzht2.width && zzht.height == zzht2.height;
        }
        return true;
    }
}
