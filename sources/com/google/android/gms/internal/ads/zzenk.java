package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Objects;

final class zzenk extends InputStream {
    private int mark;
    private final /* synthetic */ zzeng zzitt;
    private zzenh zziud;
    private zzejy zziue;
    private int zziuf;
    private int zziug;
    private int zziuh;

    public zzenk(zzeng zzeng) {
        this.zzitt = zzeng;
        initialize();
    }

    private final void initialize() {
        zzenh zzenh = new zzenh(this.zzitt, null);
        this.zziud = zzenh;
        zzejy zzejy = (zzejy) zzenh.next();
        this.zziue = zzejy;
        this.zziuf = zzejy.size();
        this.zziug = 0;
        this.zziuh = 0;
    }

    private final void zzbkj() {
        int i;
        if (this.zziue != null && this.zziug == (i = this.zziuf)) {
            this.zziuh += i;
            this.zziug = 0;
            if (this.zziud.hasNext()) {
                zzejy zzejy = (zzejy) this.zziud.next();
                this.zziue = zzejy;
                this.zziuf = zzejy.size();
                return;
            }
            this.zziue = null;
            this.zziuf = 0;
        }
    }

    private final int zzbkk() {
        return this.zzitt.size() - (this.zziuh + this.zziug);
    }

    private final int zzl(byte[] bArr, int i, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            zzbkj();
            if (this.zziue == null) {
                break;
            }
            int min = Math.min(this.zziuf - this.zziug, i3);
            if (bArr != null) {
                this.zziue.zza(bArr, this.zziug, i, min);
                i += min;
            }
            this.zziug += min;
            i3 -= min;
        }
        return i2 - i3;
    }

    @Override // java.io.InputStream
    public final int available() {
        return zzbkk();
    }

    public final void mark(int i) {
        this.mark = this.zziuh + this.zziug;
    }

    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int zzl = zzl(bArr, i, i2);
        if (zzl != 0) {
            return zzl;
        }
        if (i2 > 0 || zzbkk() == 0) {
            return -1;
        }
        return zzl;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        initialize();
        zzl(null, 0, this.mark);
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return (long) zzl(null, 0, (int) j);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.InputStream
    public final int read() {
        zzbkj();
        zzejy zzejy = this.zziue;
        if (zzejy == null) {
            return -1;
        }
        int i = this.zziug;
        this.zziug = i + 1;
        return zzejy.zzfz(i) & 255;
    }
}
