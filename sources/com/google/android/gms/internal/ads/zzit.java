package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import org.apache.http.HttpStatus;

public final class zzit {
    private static boolean zzajr = false;
    private static boolean zzajs = false;
    private int streamType;
    private zzhz zzafi;
    private int zzahp;
    private final zzig zzajt = null;
    private final zzja zzaju;
    private final zzjj zzajv;
    private final zzij[] zzajw;
    private final zziz zzajx;
    private final ConditionVariable zzajy;
    private final long[] zzajz;
    private final zziv zzaka;
    private final LinkedList<zziy> zzakb;
    private AudioTrack zzakc;
    private int zzakd;
    private int zzake;
    private int zzakf;
    private boolean zzakg;
    private int zzakh;
    private long zzaki;
    private zzhz zzakj;
    private long zzakk;
    private long zzakl;
    private ByteBuffer zzakm;
    private int zzakn;
    private int zzako;
    private int zzakp;
    private long zzakq;
    private long zzakr;
    private boolean zzaks;
    private long zzakt;
    private Method zzaku;
    private int zzakv;
    private long zzakw;
    private long zzakx;
    private int zzaky;
    private long zzakz;
    private long zzala;
    private int zzalb;
    private int zzalc;
    private long zzald;
    private long zzale;
    private long zzalf;
    private zzij[] zzalg;
    private ByteBuffer[] zzalh;
    private ByteBuffer zzali;
    private ByteBuffer zzalj;
    private byte[] zzalk;
    private int zzall;
    private int zzalm;
    private boolean zzaln;
    private boolean zzalo;
    private int zzalp;
    private boolean zzalq;
    private boolean zzalr;
    private long zzals;
    private float zzdi;

    public zzit(zzig zzig, zzij[] zzijArr, zziz zziz) {
        this.zzajx = zziz;
        this.zzajy = new ConditionVariable(true);
        if (zzpt.SDK_INT >= 18) {
            try {
                this.zzaku = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzpt.SDK_INT >= 19) {
            this.zzaka = new zziu();
        } else {
            this.zzaka = new zziv(null);
        }
        zzja zzja = new zzja();
        this.zzaju = zzja;
        zzjj zzjj = new zzjj();
        this.zzajv = zzjj;
        zzij[] zzijArr2 = new zzij[(zzijArr.length + 3)];
        this.zzajw = zzijArr2;
        zzijArr2[0] = new zzjh();
        zzijArr2[1] = zzja;
        System.arraycopy(zzijArr, 0, zzijArr2, 2, zzijArr.length);
        zzijArr2[zzijArr.length + 2] = zzjj;
        this.zzajz = new long[10];
        this.zzdi = 1.0f;
        this.zzalc = 0;
        this.streamType = 3;
        this.zzalp = 0;
        this.zzafi = zzhz.zzaia;
        this.zzalm = -1;
        this.zzalg = new zzij[0];
        this.zzalh = new ByteBuffer[0];
        this.zzakb = new LinkedList<>();
    }

    private final boolean isInitialized() {
        return this.zzakc != null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d7, code lost:
        if (r11 < r10) goto L_0x0076;
     */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0113  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zzc(java.nio.ByteBuffer r9, long r10) {
        /*
        // Method dump skipped, instructions count: 283
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzc(java.nio.ByteBuffer, long):boolean");
    }

    private final void zzdv(long j) {
        ByteBuffer byteBuffer;
        int length = this.zzalg.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzalh[i - 1];
            } else {
                byteBuffer = this.zzali;
                if (byteBuffer == null) {
                    byteBuffer = zzij.zzajc;
                }
            }
            if (i == length) {
                zzc(byteBuffer, j);
            } else {
                zzij zzij = this.zzalg[i];
                zzij.zzn(byteBuffer);
                ByteBuffer zzfm = zzij.zzfm();
                this.zzalh[i] = zzfm;
                if (zzfm.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private final long zzdw(long j) {
        return (j * 1000000) / ((long) this.zzahp);
    }

    private final long zzdx(long j) {
        return (j * ((long) this.zzahp)) / 1000000;
    }

    private final void zzfn() {
        ArrayList arrayList = new ArrayList();
        zzij[] zzijArr = this.zzajw;
        for (zzij zzij : zzijArr) {
            if (zzij.isActive()) {
                arrayList.add(zzij);
            } else {
                zzij.flush();
            }
        }
        int size = arrayList.size();
        this.zzalg = (zzij[]) arrayList.toArray(new zzij[size]);
        this.zzalh = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            zzij zzij2 = this.zzalg[i];
            zzij2.flush();
            this.zzalh[i] = zzij2.zzfm();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zzfq() {
        /*
            r9 = this;
            int r0 = r9.zzalm
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L_0x0014
            boolean r0 = r9.zzakg
            if (r0 == 0) goto L_0x000f
            com.google.android.gms.internal.ads.zzij[] r0 = r9.zzalg
            int r0 = r0.length
            goto L_0x0010
        L_0x000f:
            r0 = 0
        L_0x0010:
            r9.zzalm = r0
        L_0x0012:
            r0 = 1
            goto L_0x0015
        L_0x0014:
            r0 = 0
        L_0x0015:
            int r4 = r9.zzalm
            com.google.android.gms.internal.ads.zzij[] r5 = r9.zzalg
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L_0x0038
            r4 = r5[r4]
            if (r0 == 0) goto L_0x0028
            r4.zzfl()
        L_0x0028:
            r9.zzdv(r7)
            boolean r0 = r4.zzfe()
            if (r0 != 0) goto L_0x0032
            return r3
        L_0x0032:
            int r0 = r9.zzalm
            int r0 = r0 + r2
            r9.zzalm = r0
            goto L_0x0012
        L_0x0038:
            java.nio.ByteBuffer r0 = r9.zzalj
            if (r0 == 0) goto L_0x0044
            r9.zzc(r0, r7)
            java.nio.ByteBuffer r0 = r9.zzalj
            if (r0 == 0) goto L_0x0044
            return r3
        L_0x0044:
            r9.zzalm = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzfq():boolean");
    }

    private final void zzfu() {
        if (!isInitialized()) {
            return;
        }
        if (zzpt.SDK_INT >= 21) {
            this.zzakc.setVolume(this.zzdi);
            return;
        }
        AudioTrack audioTrack = this.zzakc;
        float f = this.zzdi;
        audioTrack.setStereoVolume(f, f);
    }

    private final long zzfv() {
        return this.zzakg ? this.zzala : this.zzakz / ((long) this.zzaky);
    }

    private final void zzfw() {
        this.zzakq = 0;
        this.zzakp = 0;
        this.zzako = 0;
        this.zzakr = 0;
        this.zzaks = false;
        this.zzakt = 0;
    }

    private final boolean zzfx() {
        if (zzpt.SDK_INT >= 23) {
            return false;
        }
        int i = this.zzakf;
        return i == 5 || i == 6;
    }

    public final void pause() {
        this.zzalo = false;
        if (isInitialized()) {
            zzfw();
            this.zzaka.pause();
        }
    }

    public final void play() {
        this.zzalo = true;
        if (isInitialized()) {
            this.zzale = System.nanoTime() / 1000;
            this.zzakc.play();
        }
    }

    public final void release() {
        reset();
        for (zzij zzij : this.zzajw) {
            zzij.reset();
        }
        this.zzalp = 0;
        this.zzalo = false;
    }

    public final void reset() {
        if (isInitialized()) {
            this.zzakw = 0;
            this.zzakx = 0;
            this.zzakz = 0;
            this.zzala = 0;
            this.zzalb = 0;
            zzhz zzhz = this.zzakj;
            if (zzhz != null) {
                this.zzafi = zzhz;
                this.zzakj = null;
            } else if (!this.zzakb.isEmpty()) {
                this.zzafi = this.zzakb.getLast().zzafi;
            }
            this.zzakb.clear();
            this.zzakk = 0;
            this.zzakl = 0;
            this.zzali = null;
            this.zzalj = null;
            int i = 0;
            while (true) {
                zzij[] zzijArr = this.zzalg;
                if (i >= zzijArr.length) {
                    break;
                }
                zzij zzij = zzijArr[i];
                zzij.flush();
                this.zzalh[i] = zzij.zzfm();
                i++;
            }
            this.zzaln = false;
            this.zzalm = -1;
            this.zzakm = null;
            this.zzakn = 0;
            this.zzalc = 0;
            this.zzalf = 0;
            zzfw();
            if (this.zzakc.getPlayState() == 3) {
                this.zzakc.pause();
            }
            AudioTrack audioTrack = this.zzakc;
            this.zzakc = null;
            this.zzaka.zza(null, false);
            this.zzajy.close();
            new zzis(this, audioTrack).start();
        }
    }

    public final void setStreamType(int i) {
        if (this.streamType != i) {
            this.streamType = i;
            if (!this.zzalq) {
                reset();
                this.zzalp = 0;
            }
        }
    }

    public final void setVolume(float f) {
        if (this.zzdi != f) {
            this.zzdi = f;
            zzfu();
        }
    }

    public final void zza(String str, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        long j;
        boolean z2 = true;
        boolean z3 = !"audio/raw".equals(str);
        if (z3) {
            str.hashCode();
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1095064472:
                    if (str.equals("audio/vnd.dts")) {
                        c = 0;
                        break;
                    }
                    break;
                case 187078296:
                    if (str.equals("audio/ac3")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1504578661:
                    if (str.equals("audio/eac3")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1505942594:
                    if (str.equals("audio/vnd.dts.hd")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i5 = 7;
                    break;
                case 1:
                    i5 = 5;
                    break;
                case 2:
                    i5 = 6;
                    break;
                case 3:
                    i5 = 8;
                    break;
                default:
                    i5 = 0;
                    break;
            }
        } else {
            i5 = i3;
        }
        if (!z3) {
            i6 = i;
            this.zzakv = zzpt.zzg(i3, i6);
            this.zzaju.zzb(iArr);
            zzij[] zzijArr = this.zzajw;
            z = false;
            for (zzij zzij : zzijArr) {
                try {
                    z |= zzij.zzb(i2, i6, i5);
                    if (zzij.isActive()) {
                        i6 = zzij.zzfj();
                        i5 = zzij.zzfk();
                    }
                } catch (zzii e) {
                    throw new zzix(e);
                }
            }
            if (z) {
                zzfn();
            }
        } else {
            i6 = i;
            z = false;
        }
        switch (i6) {
            case 1:
                i7 = 4;
                break;
            case 2:
                i7 = 12;
                break;
            case 3:
                i7 = 28;
                break;
            case 4:
                i7 = HttpStatus.SC_NO_CONTENT;
                break;
            case 5:
                i7 = 220;
                break;
            case 6:
                i7 = 252;
                break;
            case 7:
                i7 = 1276;
                break;
            case 8:
                i7 = zzhf.CHANNEL_OUT_7POINT1_SURROUND;
                break;
            default:
                throw new zzix(ic.C(38, "Unsupported channel count: ", i6));
        }
        int i9 = zzpt.SDK_INT;
        if (i9 <= 23 && "foster".equals(zzpt.DEVICE) && "NVIDIA".equals(zzpt.MANUFACTURER)) {
            if (i6 == 3 || i6 == 5) {
                i7 = 252;
            } else if (i6 == 7) {
                i7 = zzhf.CHANNEL_OUT_7POINT1_SURROUND;
            }
        }
        if (i9 <= 25 && "fugu".equals(zzpt.DEVICE) && z3 && i6 == 1) {
            i7 = 12;
        }
        if (!(!z && isInitialized() && this.zzake == i5 && this.zzahp == i2 && this.zzakd == i7)) {
            reset();
            this.zzake = i5;
            this.zzakg = z3;
            this.zzahp = i2;
            this.zzakd = i7;
            if (!z3) {
                i5 = 2;
            }
            this.zzakf = i5;
            this.zzaky = zzpt.zzg(2, i6);
            if (z3) {
                int i10 = this.zzakf;
                i8 = (i10 == 5 || i10 == 6) ? 20480 : 49152;
            } else {
                int minBufferSize = AudioTrack.getMinBufferSize(i2, i7, this.zzakf);
                if (minBufferSize == -2) {
                    z2 = false;
                }
                zzpg.checkState(z2);
                int i11 = minBufferSize << 2;
                int zzdx = this.zzaky * ((int) zzdx(250000));
                i8 = (int) Math.max((long) minBufferSize, zzdx(750000) * ((long) this.zzaky));
                if (i11 < zzdx) {
                    i8 = zzdx;
                } else if (i11 <= i8) {
                    i8 = i11;
                }
            }
            this.zzakh = i8;
            if (z3) {
                j = -9223372036854775807L;
            } else {
                j = zzdw((long) (i8 / this.zzaky));
            }
            this.zzaki = j;
            zzb(this.zzafi);
        }
    }

    public final boolean zzb(ByteBuffer byteBuffer, long j) {
        int i;
        int i2;
        ByteBuffer byteBuffer2 = this.zzali;
        zzpg.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!isInitialized()) {
            this.zzajy.block();
            if (this.zzalq) {
                this.zzakc = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.zzakd).setEncoding(this.zzakf).setSampleRate(this.zzahp).build(), this.zzakh, 1, this.zzalp);
            } else if (this.zzalp == 0) {
                this.zzakc = new AudioTrack(this.streamType, this.zzahp, this.zzakd, this.zzakf, this.zzakh, 1);
            } else {
                this.zzakc = new AudioTrack(this.streamType, this.zzahp, this.zzakd, this.zzakf, this.zzakh, 1, this.zzalp);
            }
            int state = this.zzakc.getState();
            if (state == 1) {
                int audioSessionId = this.zzakc.getAudioSessionId();
                if (this.zzalp != audioSessionId) {
                    this.zzalp = audioSessionId;
                    this.zzajx.zzx(audioSessionId);
                }
                this.zzaka.zza(this.zzakc, zzfx());
                zzfu();
                this.zzalr = false;
                if (this.zzalo) {
                    play();
                }
            } else {
                try {
                    this.zzakc.release();
                } catch (Exception unused) {
                } finally {
                    this.zzakc = null;
                }
                throw new zziw(state, this.zzahp, this.zzakd, this.zzakh);
            }
        }
        if (zzfx()) {
            if (this.zzakc.getPlayState() == 2) {
                this.zzalr = false;
                return false;
            } else if (this.zzakc.getPlayState() == 1 && this.zzaka.zzgb() != 0) {
                return false;
            }
        }
        boolean z = this.zzalr;
        boolean zzfr = zzfr();
        this.zzalr = zzfr;
        if (z && !zzfr && this.zzakc.getPlayState() != 1) {
            this.zzajx.zzc(this.zzakh, zzhf.zzdo(this.zzaki), SystemClock.elapsedRealtime() - this.zzals);
        }
        if (this.zzali == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.zzakg && this.zzalb == 0) {
                int i3 = this.zzakf;
                if (i3 == 7 || i3 == 8) {
                    i2 = zzjd.zzo(byteBuffer);
                } else if (i3 == 5) {
                    i2 = zzih.zzfi();
                } else if (i3 == 6) {
                    i2 = zzih.zzm(byteBuffer);
                } else {
                    throw new IllegalStateException(ic.C(38, "Unexpected audio encoding: ", i3));
                }
                this.zzalb = i2;
            }
            if (this.zzakj != null) {
                if (!zzfq()) {
                    return false;
                }
                this.zzakb.add(new zziy(this.zzakj, Math.max(0L, j), zzdw(zzfv()), null));
                this.zzakj = null;
                zzfn();
            }
            if (this.zzalc == 0) {
                this.zzald = Math.max(0L, j);
                this.zzalc = 1;
            } else {
                long zzdw = this.zzald + zzdw(this.zzakg ? this.zzakx : this.zzakw / ((long) this.zzakv));
                if (this.zzalc != 1 || Math.abs(zzdw - j) <= 200000) {
                    i = 2;
                } else {
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Discontinuity detected [expected ");
                    sb.append(zzdw);
                    sb.append(", got ");
                    sb.append(j);
                    sb.append("]");
                    Log.e("AudioTrack", sb.toString());
                    i = 2;
                    this.zzalc = 2;
                }
                if (this.zzalc == i) {
                    this.zzald = (j - zzdw) + this.zzald;
                    this.zzalc = 1;
                    this.zzajx.zzek();
                }
            }
            if (this.zzakg) {
                this.zzakx += (long) this.zzalb;
            } else {
                this.zzakw += (long) byteBuffer.remaining();
            }
            this.zzali = byteBuffer;
        }
        if (this.zzakg) {
            zzc(this.zzali, j);
        } else {
            zzdv(j);
        }
        if (this.zzali.hasRemaining()) {
            return false;
        }
        this.zzali = null;
        return true;
    }

    public final boolean zzfe() {
        if (isInitialized()) {
            return this.zzaln && !zzfr();
        }
        return true;
    }

    public final void zzfo() {
        if (this.zzalc == 1) {
            this.zzalc = 2;
        }
    }

    public final void zzfp() {
        if (!this.zzaln && isInitialized() && zzfq()) {
            this.zzaka.zzdy(zzfv());
            this.zzakn = 0;
            this.zzaln = true;
        }
    }

    public final boolean zzfr() {
        if (isInitialized()) {
            if (zzfv() <= this.zzaka.zzgb()) {
                if (zzfx() && this.zzakc.getPlayState() == 2 && this.zzakc.getPlaybackHeadPosition() == 0) {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public final zzhz zzfs() {
        return this.zzafi;
    }

    public final void zzft() {
        if (this.zzalq) {
            this.zzalq = false;
            this.zzalp = 0;
            reset();
        }
    }

    public final long zzj(boolean z) {
        long j;
        long j2;
        if (!(isInitialized() && this.zzalc != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.zzakc.getPlayState() == 3) {
            long zzgc = this.zzaka.zzgc();
            if (zzgc != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzakr >= 30000) {
                    long[] jArr = this.zzajz;
                    int i = this.zzako;
                    jArr[i] = zzgc - nanoTime;
                    this.zzako = (i + 1) % 10;
                    int i2 = this.zzakp;
                    if (i2 < 10) {
                        this.zzakp = i2 + 1;
                    }
                    this.zzakr = nanoTime;
                    this.zzakq = 0;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzakp;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzakq = (this.zzajz[i3] / ((long) i4)) + this.zzakq;
                        i3++;
                    }
                }
                if (!zzfx() && nanoTime - this.zzakt >= 500000) {
                    boolean zzfy = this.zzaka.zzfy();
                    this.zzaks = zzfy;
                    if (zzfy) {
                        long zzfz = this.zzaka.zzfz() / 1000;
                        long zzga = this.zzaka.zzga();
                        if (zzfz < this.zzale) {
                            this.zzaks = false;
                        } else if (Math.abs(zzfz - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(zzga);
                            sb.append(", ");
                            sb.append(zzfz);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(zzgc);
                            Log.w("AudioTrack", sb.toString());
                            this.zzaks = false;
                        } else if (Math.abs(zzdw(zzga) - zzgc) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(zzga);
                            sb2.append(", ");
                            sb2.append(zzfz);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(zzgc);
                            Log.w("AudioTrack", sb2.toString());
                            this.zzaks = false;
                        }
                    }
                    Method method = this.zzaku;
                    if (method != null && !this.zzakg) {
                        try {
                            long intValue = (((long) ((Integer) method.invoke(this.zzakc, null)).intValue()) * 1000) - this.zzaki;
                            this.zzalf = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzalf = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("AudioTrack", sb3.toString());
                                this.zzalf = 0;
                            }
                        } catch (Exception unused) {
                            this.zzaku = null;
                        }
                    }
                    this.zzakt = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.zzaks) {
            j = zzdw(this.zzaka.zzga() + zzdx(nanoTime2 - (this.zzaka.zzfz() / 1000)));
        } else {
            if (this.zzakp == 0) {
                j = this.zzaka.zzgc();
            } else {
                j = nanoTime2 + this.zzakq;
            }
            if (!z) {
                j -= this.zzalf;
            }
        }
        long j3 = this.zzald;
        while (!this.zzakb.isEmpty() && j >= this.zzakb.getFirst().zzagk) {
            zziy remove = this.zzakb.remove();
            this.zzafi = remove.zzafi;
            this.zzakl = remove.zzagk;
            this.zzakk = remove.zzamf - this.zzald;
        }
        if (this.zzafi.zzaib == 1.0f) {
            j2 = (j + this.zzakk) - this.zzakl;
        } else if (!this.zzakb.isEmpty() || this.zzajv.zzgl() < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            long j4 = this.zzakk;
            double d = (double) this.zzafi.zzaib;
            double d2 = (double) (j - this.zzakl);
            Double.isNaN(d);
            Double.isNaN(d2);
            j2 = ((long) (d * d2)) + j4;
        } else {
            j2 = zzpt.zza(j - this.zzakl, this.zzajv.zzgk(), this.zzajv.zzgl()) + this.zzakk;
        }
        return j3 + j2;
    }

    public final zzhz zzb(zzhz zzhz) {
        if (this.zzakg) {
            zzhz zzhz2 = zzhz.zzaia;
            this.zzafi = zzhz2;
            return zzhz2;
        }
        zzhz zzhz3 = new zzhz(this.zzajv.zzb(zzhz.zzaib), this.zzajv.zzc(zzhz.zzaic));
        zzhz zzhz4 = this.zzakj;
        if (zzhz4 == null) {
            if (!this.zzakb.isEmpty()) {
                zzhz4 = this.zzakb.getLast().zzafi;
            } else {
                zzhz4 = this.zzafi;
            }
        }
        if (!zzhz3.equals(zzhz4)) {
            if (isInitialized()) {
                this.zzakj = zzhz3;
            } else {
                this.zzafi = zzhz3;
            }
        }
        return this.zzafi;
    }
}
