package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzjc extends zzlv implements zzpk {
    private int zzaho;
    private int zzahq;
    private final zzik zzamm;
    private final zzit zzamn;
    private boolean zzamo;
    private boolean zzamp;
    private MediaFormat zzamq;
    private long zzamr;
    private boolean zzams;

    public zzjc(zzlx zzlx, Handler handler, zzil zzil) {
        this(zzlx, null, true, handler, zzil);
    }

    private final boolean zzax(String str) {
        return false;
    }

    protected static void zzb(int i, long j, long j2) {
    }

    protected static void zzgd() {
    }

    protected static void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean isReady() {
        return this.zzamn.zzfr() || super.isReady();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int[] iArr;
        int i;
        MediaFormat mediaFormat2 = this.zzamq;
        boolean z = mediaFormat2 != null;
        String string = z ? mediaFormat2.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.zzamq;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (!this.zzamp || integer != 6 || (i = this.zzaho) >= 6) {
            iArr = null;
        } else {
            iArr = new int[i];
            for (int i2 = 0; i2 < this.zzaho; i2++) {
                iArr[i2] = i2;
            }
        }
        try {
            this.zzamn.zza(string, integer, integer2, this.zzahq, 0, iArr);
        } catch (zzix e) {
            throw zzhe.zza(e, getIndex());
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void onStarted() {
        super.onStarted();
        this.zzamn.play();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void onStopped() {
        this.zzamn.pause();
        super.onStopped();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final int zza(zzlx zzlx, zzht zzht) {
        int i;
        int i2;
        String str = zzht.zzahe;
        boolean z = false;
        if (!zzpj.zzbc(str)) {
            return 0;
        }
        int i3 = zzpt.SDK_INT;
        int i4 = i3 >= 21 ? 16 : 0;
        int i5 = 3;
        if (zzax(str) && zzlx.zzhj() != null) {
            return i4 | 4 | 3;
        }
        zzlw zzc = zzlx.zzc(str, false);
        if (zzc == null) {
            return 1;
        }
        if (i3 < 21 || (((i = zzht.zzahp) == -1 || zzc.zzaw(i)) && ((i2 = zzht.zzaho) == -1 || zzc.zzax(i2)))) {
            z = true;
        }
        if (!z) {
            i5 = 2;
        }
        return i4 | 4 | i5;
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzb(zzhz zzhz) {
        return this.zzamn.zzb(zzhz);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzc(String str, long j, long j2) {
        this.zzamm.zza(str, j, j2);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzd(zzht zzht) {
        super.zzd(zzht);
        this.zzamm.zzb(zzht);
        this.zzahq = "audio/raw".equals(zzht.zzahe) ? zzht.zzahq : 2;
        this.zzaho = zzht.zzaho;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zze(boolean z) {
        super.zze(z);
        this.zzamm.zza(this.zzbcq);
        int i = zzei().zzaif;
        this.zzamn.zzft();
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhy
    public final zzpk zzea() {
        return this;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zzeh() {
        try {
            this.zzamn.release();
            try {
                super.zzeh();
            } finally {
                this.zzbcq.zzgn();
                this.zzamm.zzb(this.zzbcq);
            }
        } catch (Throwable th) {
            super.zzeh();
            throw th;
        } finally {
            this.zzbcq.zzgn();
            this.zzamm.zzb(this.zzbcq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzhy
    public final boolean zzfe() {
        return super.zzfe() && this.zzamn.zzfe();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final zzhz zzfs() {
        return this.zzamn.zzfs();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final long zzgc() {
        long zzj = this.zzamn.zzj(zzfe());
        if (zzj != Long.MIN_VALUE) {
            if (!this.zzams) {
                zzj = Math.max(this.zzamr, zzj);
            }
            this.zzamr = zzj;
            this.zzams = false;
        }
        return this.zzamr;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzge() {
        try {
            this.zzamn.zzfp();
        } catch (zzjb e) {
            throw zzhe.zza(e, getIndex());
        }
    }

    private zzjc(zzlx zzlx, zzjt<zzjv> zzjt, boolean z, Handler handler, zzil zzil) {
        this(zzlx, null, true, handler, zzil, null, new zzij[0]);
    }

    private zzjc(zzlx zzlx, zzjt<zzjv> zzjt, boolean z, Handler handler, zzil zzil, zzig zzig, zzij... zzijArr) {
        super(1, zzlx, null, true);
        this.zzamn = new zzit(null, zzijArr, new zzje(this));
        this.zzamm = new zzik(handler, zzil);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final zzlw zza(zzlx zzlx, zzht zzht, boolean z) {
        zzlw zzhj;
        if (!zzax(zzht.zzahe) || (zzhj = zzlx.zzhj()) == null) {
            this.zzamo = false;
            return super.zza(zzlx, zzht, z);
        }
        this.zzamo = true;
        return zzhj;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0059  */
    @Override // com.google.android.gms.internal.ads.zzlv
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.ads.zzlw r4, android.media.MediaCodec r5, com.google.android.gms.internal.ads.zzht r6, android.media.MediaCrypto r7) {
        /*
            r3 = this;
            java.lang.String r4 = r4.name
            int r7 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r0 = 0
            r1 = 24
            if (r7 >= r1) goto L_0x0037
            java.lang.String r7 = "OMX.SEC.aac.dec"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L_0x0037
            java.lang.String r4 = com.google.android.gms.internal.ads.zzpt.MANUFACTURER
            java.lang.String r7 = "samsung"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L_0x0037
            java.lang.String r4 = com.google.android.gms.internal.ads.zzpt.DEVICE
            java.lang.String r7 = "zeroflte"
            boolean r7 = r4.startsWith(r7)
            if (r7 != 0) goto L_0x0035
            java.lang.String r7 = "herolte"
            boolean r7 = r4.startsWith(r7)
            if (r7 != 0) goto L_0x0035
            java.lang.String r7 = "heroqlte"
            boolean r4 = r4.startsWith(r7)
            if (r4 == 0) goto L_0x0037
        L_0x0035:
            r4 = 1
            goto L_0x0038
        L_0x0037:
            r4 = 0
        L_0x0038:
            r3.zzamp = r4
            boolean r4 = r3.zzamo
            r7 = 0
            if (r4 == 0) goto L_0x0059
            android.media.MediaFormat r4 = r6.zzfa()
            r3.zzamq = r4
            java.lang.String r1 = "mime"
            java.lang.String r2 = "audio/raw"
            r4.setString(r1, r2)
            android.media.MediaFormat r4 = r3.zzamq
            r5.configure(r4, r7, r7, r0)
            android.media.MediaFormat r4 = r3.zzamq
            java.lang.String r5 = r6.zzahe
            r4.setString(r1, r5)
            return
        L_0x0059:
            android.media.MediaFormat r4 = r6.zzfa()
            r5.configure(r4, r7, r7, r0)
            r3.zzamq = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjc.zza(com.google.android.gms.internal.ads.zzlw, android.media.MediaCodec, com.google.android.gms.internal.ads.zzht, android.media.MediaCrypto):void");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzlv
    public final void zza(long j, boolean z) {
        super.zza(j, z);
        this.zzamn.reset();
        this.zzamr = j;
        this.zzams = true;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        if (this.zzamo && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.zzbcq.zzaoe++;
            this.zzamn.zzfo();
            return true;
        } else {
            try {
                if (!this.zzamn.zzb(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.zzbcq.zzaod++;
                return true;
            } catch (zziw | zzjb e) {
                throw zzhe.zza(e, getIndex());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzhj
    public final void zza(int i, Object obj) {
        if (i == 2) {
            this.zzamn.setVolume(((Float) obj).floatValue());
        } else if (i != 3) {
            super.zza(i, obj);
        } else {
            this.zzamn.setStreamType(((Integer) obj).intValue());
        }
    }
}
