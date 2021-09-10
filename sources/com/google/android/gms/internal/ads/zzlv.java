package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
public abstract class zzlv extends zzhd {
    private static final byte[] zzbbg = zzpt.zzbi("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private zzht zzahz;
    private ByteBuffer[] zzalh;
    private final zzlx zzbbh;
    private final zzjt<zzjv> zzbbi;
    private final boolean zzbbj;
    private final zzjp zzbbk;
    private final zzjp zzbbl;
    private final zzhv zzbbm;
    private final List<Long> zzbbn;
    private final MediaCodec.BufferInfo zzbbo;
    private zzjr<zzjv> zzbbp;
    private zzjr<zzjv> zzbbq;
    private MediaCodec zzbbr;
    private zzlw zzbbs;
    private boolean zzbbt;
    private boolean zzbbu;
    private boolean zzbbv;
    private boolean zzbbw;
    private boolean zzbbx;
    private boolean zzbby;
    private boolean zzbbz;
    private boolean zzbca;
    private boolean zzbcb;
    private ByteBuffer[] zzbcc;
    private long zzbcd;
    private int zzbce;
    private int zzbcf;
    private boolean zzbcg;
    private boolean zzbch;
    private int zzbci;
    private int zzbcj;
    private boolean zzbck;
    private boolean zzbcl;
    private boolean zzbcm;
    private boolean zzbcn;
    private boolean zzbco;
    private boolean zzbcp;
    protected zzjm zzbcq;

    public zzlv(int i, zzlx zzlx, zzjt<zzjv> zzjt, boolean z) {
        super(i);
        zzpg.checkState(zzpt.SDK_INT >= 16);
        this.zzbbh = (zzlx) zzpg.checkNotNull(zzlx);
        this.zzbbi = null;
        this.zzbbj = z;
        this.zzbbk = new zzjp(0);
        this.zzbbl = new zzjp(0);
        this.zzbbm = new zzhv();
        this.zzbbn = new ArrayList();
        this.zzbbo = new MediaCodec.BufferInfo();
        this.zzbci = 0;
        this.zzbcj = 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:84:0x0145 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0146  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zzhg() {
        /*
        // Method dump skipped, instructions count: 463
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlv.zzhg():boolean");
    }

    private final void zzhh() {
        if (this.zzbcj == 2) {
            zzhf();
            zzhc();
            return;
        }
        this.zzbcn = true;
        zzge();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public boolean isReady() {
        if (this.zzahz == null || this.zzbco) {
            return false;
        }
        if (zzej() || this.zzbcf >= 0) {
            return true;
        }
        return this.zzbcd != -9223372036854775807L && SystemClock.elapsedRealtime() < this.zzbcd;
    }

    /* access modifiers changed from: protected */
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public void onStarted() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public void onStopped() {
    }

    @Override // com.google.android.gms.internal.ads.zzib
    public final int zza(zzht zzht) {
        try {
            return zza(this.zzbbh, zzht);
        } catch (zzmd e) {
            throw zzhe.zza(e, getIndex());
        }
    }

    /* access modifiers changed from: protected */
    public abstract int zza(zzlx zzlx, zzht zzht);

    /* access modifiers changed from: protected */
    public void zza(zzjp zzjp) {
    }

    /* access modifiers changed from: protected */
    public abstract void zza(zzlw zzlw, MediaCodec mediaCodec, zzht zzht, MediaCrypto mediaCrypto);

    /* access modifiers changed from: protected */
    public abstract boolean zza(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z);

    /* access modifiers changed from: protected */
    public boolean zza(MediaCodec mediaCodec, boolean z, zzht zzht, zzht zzht2) {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean zza(zzlw zzlw) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzb(long j, long j2) {
        if (this.zzbcn) {
            zzge();
            return;
        }
        if (this.zzahz == null) {
            this.zzbbl.clear();
            int zza = zza(this.zzbbm, this.zzbbl, true);
            if (zza == -5) {
                zzd(this.zzbbm.zzahz);
            } else if (zza == -4) {
                zzpg.checkState(this.zzbbl.zzgi());
                this.zzbcm = true;
                zzhh();
                return;
            } else {
                return;
            }
        }
        zzhc();
        if (this.zzbbr != null) {
            zzpu.beginSection("drainAndFeed");
            do {
            } while (zzd(j, j2));
            do {
            } while (zzhg());
            zzpu.endSection();
        } else {
            zzdn(j);
            this.zzbbl.clear();
            int zza2 = zza(this.zzbbm, this.zzbbl, false);
            if (zza2 == -5) {
                zzd(this.zzbbm.zzahz);
            } else if (zza2 == -4) {
                zzpg.checkState(this.zzbbl.zzgi());
                this.zzbcm = true;
                zzhh();
            }
        }
        this.zzbcq.zzgn();
    }

    /* access modifiers changed from: protected */
    public void zzc(String str, long j, long j2) {
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0073, code lost:
        if (r5.height == r0.height) goto L_0x0077;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzd(com.google.android.gms.internal.ads.zzht r5) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlv.zzd(com.google.android.gms.internal.ads.zzht):void");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public void zze(boolean z) {
        this.zzbcq = new zzjm();
    }

    @Override // com.google.android.gms.internal.ads.zzhd, com.google.android.gms.internal.ads.zzib
    public final int zzeg() {
        return 4;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public void zzeh() {
        this.zzahz = null;
        try {
            zzhf();
            try {
                zzjr<zzjv> zzjr = this.zzbbp;
                if (zzjr != null) {
                    this.zzbbi.zza(zzjr);
                }
                try {
                    zzjr<zzjv> zzjr2 = this.zzbbq;
                    if (!(zzjr2 == null || zzjr2 == this.zzbbp)) {
                        this.zzbbi.zza(zzjr2);
                    }
                } finally {
                    this.zzbbp = null;
                    this.zzbbq = null;
                }
            } catch (Throwable th) {
                zzjr<zzjv> zzjr3 = this.zzbbq;
                if (!(zzjr3 == null || zzjr3 == this.zzbbp)) {
                    this.zzbbi.zza(zzjr3);
                }
                throw th;
            } finally {
                this.zzbbp = null;
                this.zzbbq = null;
            }
        } catch (Throwable th2) {
            try {
                zzjr<zzjv> zzjr4 = this.zzbbq;
                if (!(zzjr4 == null || zzjr4 == this.zzbbp)) {
                    this.zzbbi.zza(zzjr4);
                }
                throw th2;
            } finally {
                this.zzbbp = null;
                this.zzbbq = null;
            }
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public boolean zzfe() {
        return this.zzbcn;
    }

    /* access modifiers changed from: protected */
    public void zzge() {
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x0184 A[Catch:{ Exception -> 0x01d5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0189 A[Catch:{ Exception -> 0x01d5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x01e7  */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x01ef  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzhc() {
        /*
        // Method dump skipped, instructions count: 517
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlv.zzhc():void");
    }

    /* access modifiers changed from: protected */
    public final MediaCodec zzhd() {
        return this.zzbbr;
    }

    /* access modifiers changed from: protected */
    public final zzlw zzhe() {
        return this.zzbbs;
    }

    /* access modifiers changed from: protected */
    public void zzhf() {
        this.zzbcd = -9223372036854775807L;
        this.zzbce = -1;
        this.zzbcf = -1;
        this.zzbco = false;
        this.zzbcg = false;
        this.zzbbn.clear();
        this.zzbcc = null;
        this.zzalh = null;
        this.zzbbs = null;
        this.zzbch = false;
        this.zzbck = false;
        this.zzbbt = false;
        this.zzbbu = false;
        this.zzbbv = false;
        this.zzbbw = false;
        this.zzbbx = false;
        this.zzbbz = false;
        this.zzbca = false;
        this.zzbcb = false;
        this.zzbcl = false;
        this.zzbci = 0;
        this.zzbcj = 0;
        this.zzbbk.zzdr = null;
        MediaCodec mediaCodec = this.zzbbr;
        if (mediaCodec != null) {
            this.zzbcq.zzaob++;
            try {
                mediaCodec.stop();
                try {
                    this.zzbbr.release();
                    this.zzbbr = null;
                    zzjr<zzjv> zzjr = this.zzbbp;
                    if (zzjr != null && this.zzbbq != zzjr) {
                        try {
                            this.zzbbi.zza(zzjr);
                        } finally {
                            this.zzbbp = null;
                        }
                    }
                } catch (Throwable th) {
                    this.zzbbr = null;
                    zzjr<zzjv> zzjr2 = this.zzbbp;
                    if (!(zzjr2 == null || this.zzbbq == zzjr2)) {
                        this.zzbbi.zza(zzjr2);
                    }
                    throw th;
                } finally {
                    this.zzbbp = null;
                }
            } catch (Throwable th2) {
                this.zzbbr = null;
                zzjr<zzjv> zzjr3 = this.zzbbp;
                if (!(zzjr3 == null || this.zzbbq == zzjr3)) {
                    try {
                        this.zzbbi.zza(zzjr3);
                    } finally {
                        this.zzbbp = null;
                    }
                }
                throw th2;
            } finally {
            }
        }
    }

    /* access modifiers changed from: protected */
    public zzlw zza(zzlx zzlx, zzht zzht, boolean z) {
        return zzlx.zzc(zzht.zzahe, z);
    }

    private final void zza(zzly zzly) {
        throw zzhe.zza(zzly, getIndex());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzhd
    public void zza(long j, boolean z) {
        this.zzbcm = false;
        this.zzbcn = false;
        if (this.zzbbr != null) {
            this.zzbcd = -9223372036854775807L;
            this.zzbce = -1;
            this.zzbcf = -1;
            this.zzbcp = true;
            this.zzbco = false;
            this.zzbcg = false;
            this.zzbbn.clear();
            this.zzbca = false;
            this.zzbcb = false;
            if (this.zzbbu || (this.zzbbx && this.zzbcl)) {
                zzhf();
                zzhc();
            } else if (this.zzbcj != 0) {
                zzhf();
                zzhc();
            } else {
                this.zzbbr.flush();
                this.zzbck = false;
            }
            if (this.zzbch && this.zzahz != null) {
                this.zzbci = 1;
            }
        }
    }

    private final boolean zzd(long j, long j2) {
        boolean z;
        boolean z2;
        if (this.zzbcf < 0) {
            if (!this.zzbby || !this.zzbcl) {
                this.zzbcf = this.zzbbr.dequeueOutputBuffer(this.zzbbo, 0);
            } else {
                try {
                    this.zzbcf = this.zzbbr.dequeueOutputBuffer(this.zzbbo, 0);
                } catch (IllegalStateException unused) {
                    zzhh();
                    if (this.zzbcn) {
                        zzhf();
                    }
                    return false;
                }
            }
            int i = this.zzbcf;
            if (i >= 0) {
                if (this.zzbcb) {
                    this.zzbcb = false;
                    this.zzbbr.releaseOutputBuffer(i, false);
                    this.zzbcf = -1;
                    return true;
                }
                MediaCodec.BufferInfo bufferInfo = this.zzbbo;
                if ((bufferInfo.flags & 4) != 0) {
                    zzhh();
                    this.zzbcf = -1;
                    return false;
                }
                ByteBuffer byteBuffer = this.zzalh[i];
                if (byteBuffer != null) {
                    byteBuffer.position(bufferInfo.offset);
                    MediaCodec.BufferInfo bufferInfo2 = this.zzbbo;
                    byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                }
                long j3 = this.zzbbo.presentationTimeUs;
                int size = this.zzbbn.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z2 = false;
                        break;
                    } else if (this.zzbbn.get(i2).longValue() == j3) {
                        this.zzbbn.remove(i2);
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                this.zzbcg = z2;
            } else if (i == -2) {
                MediaFormat outputFormat = this.zzbbr.getOutputFormat();
                if (this.zzbbv && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.zzbcb = true;
                } else {
                    if (this.zzbbz) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    onOutputFormatChanged(this.zzbbr, outputFormat);
                }
                return true;
            } else if (i == -3) {
                this.zzalh = this.zzbbr.getOutputBuffers();
                return true;
            } else {
                if (this.zzbbw && (this.zzbcm || this.zzbcj == 2)) {
                    zzhh();
                }
                return false;
            }
        }
        if (!this.zzbby || !this.zzbcl) {
            MediaCodec mediaCodec = this.zzbbr;
            ByteBuffer[] byteBufferArr = this.zzalh;
            int i3 = this.zzbcf;
            ByteBuffer byteBuffer2 = byteBufferArr[i3];
            MediaCodec.BufferInfo bufferInfo3 = this.zzbbo;
            z = zza(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.zzbcg);
        } else {
            try {
                MediaCodec mediaCodec2 = this.zzbbr;
                ByteBuffer[] byteBufferArr2 = this.zzalh;
                int i4 = this.zzbcf;
                ByteBuffer byteBuffer3 = byteBufferArr2[i4];
                MediaCodec.BufferInfo bufferInfo4 = this.zzbbo;
                z = zza(j, j2, mediaCodec2, byteBuffer3, i4, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.zzbcg);
            } catch (IllegalStateException unused2) {
                zzhh();
                if (this.zzbcn) {
                    zzhf();
                }
                return false;
            }
        }
        if (!z) {
            return false;
        }
        long j4 = this.zzbbo.presentationTimeUs;
        this.zzbcf = -1;
        return true;
    }
}
