package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class zzjj implements zzij {
    private int zzaho = -1;
    private float zzaib = 1.0f;
    private float zzaic = 1.0f;
    private ByteBuffer zzalj;
    private int zzamg = -1;
    private ByteBuffer zzamk;
    private boolean zzaml;
    private zzjg zzans;
    private ShortBuffer zzant;
    private long zzanu;
    private long zzanv;

    public zzjj() {
        ByteBuffer byteBuffer = zzij.zzajc;
        this.zzamk = byteBuffer;
        this.zzant = byteBuffer.asShortBuffer();
        this.zzalj = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void flush() {
        zzjg zzjg = new zzjg(this.zzamg, this.zzaho);
        this.zzans = zzjg;
        zzjg.setSpeed(this.zzaib);
        this.zzans.zza(this.zzaic);
        this.zzalj = zzij.zzajc;
        this.zzanu = 0;
        this.zzanv = 0;
        this.zzaml = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean isActive() {
        return Math.abs(this.zzaib - 1.0f) >= 0.01f || Math.abs(this.zzaic - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void reset() {
        this.zzans = null;
        ByteBuffer byteBuffer = zzij.zzajc;
        this.zzamk = byteBuffer;
        this.zzant = byteBuffer.asShortBuffer();
        this.zzalj = byteBuffer;
        this.zzaho = -1;
        this.zzamg = -1;
        this.zzanu = 0;
        this.zzanv = 0;
        this.zzaml = false;
    }

    public final float zzb(float f) {
        float zza = zzpt.zza(f, 0.1f, 8.0f);
        this.zzaib = zza;
        return zza;
    }

    public final float zzc(float f) {
        this.zzaic = zzpt.zza(f, 0.1f, 8.0f);
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzfe() {
        if (!this.zzaml) {
            return false;
        }
        zzjg zzjg = this.zzans;
        return zzjg == null || zzjg.zzgf() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfj() {
        return this.zzaho;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfk() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzfl() {
        this.zzans.zzfl();
        this.zzaml = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final ByteBuffer zzfm() {
        ByteBuffer byteBuffer = this.zzalj;
        this.zzalj = zzij.zzajc;
        return byteBuffer;
    }

    public final long zzgk() {
        return this.zzanu;
    }

    public final long zzgl() {
        return this.zzanv;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzn(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.zzanu += (long) remaining;
            this.zzans.zza(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int zzgf = (this.zzans.zzgf() * this.zzaho) << 1;
        if (zzgf > 0) {
            if (this.zzamk.capacity() < zzgf) {
                ByteBuffer order = ByteBuffer.allocateDirect(zzgf).order(ByteOrder.nativeOrder());
                this.zzamk = order;
                this.zzant = order.asShortBuffer();
            } else {
                this.zzamk.clear();
                this.zzant.clear();
            }
            this.zzans.zzb(this.zzant);
            this.zzanv += (long) zzgf;
            this.zzamk.limit(zzgf);
            this.zzalj = this.zzamk;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzb(int i, int i2, int i3) {
        if (i3 != 2) {
            throw new zzii(i, i2, i3);
        } else if (this.zzamg == i && this.zzaho == i2) {
            return false;
        } else {
            this.zzamg = i;
            this.zzaho = i2;
            return true;
        }
    }
}
