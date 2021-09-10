package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

final class zzjh implements zzij {
    private int zzaho = -1;
    private int zzake = 0;
    private ByteBuffer zzalj;
    private int zzamg = -1;
    private ByteBuffer zzamk;
    private boolean zzaml;

    public zzjh() {
        ByteBuffer byteBuffer = zzij.zzajc;
        this.zzamk = byteBuffer;
        this.zzalj = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void flush() {
        this.zzalj = zzij.zzajc;
        this.zzaml = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean isActive() {
        int i = this.zzake;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void reset() {
        flush();
        this.zzamk = zzij.zzajc;
        this.zzamg = -1;
        this.zzaho = -1;
        this.zzake = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzb(int i, int i2, int i3) {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new zzii(i, i2, i3);
        } else if (this.zzamg == i && this.zzaho == i2 && this.zzake == i3) {
            return false;
        } else {
            this.zzamg = i;
            this.zzaho = i2;
            this.zzake = i3;
            if (i3 != 2) {
                return true;
            }
            this.zzamk = zzij.zzajc;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzfe() {
        return this.zzaml && this.zzalj == zzij.zzajc;
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
        this.zzaml = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final ByteBuffer zzfm() {
        ByteBuffer byteBuffer = this.zzalj;
        this.zzalj = zzij.zzajc;
        return byteBuffer;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0081 A[LOOP:2: B:23:0x0081->B:24:0x0083, LOOP_START, PHI: r0 
      PHI: (r0v2 int) = (r0v0 int), (r0v3 int) binds: [B:14:0x0041, B:24:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzij
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzn(java.nio.ByteBuffer r8) {
        /*
        // Method dump skipped, instructions count: 173
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjh.zzn(java.nio.ByteBuffer):void");
    }
}
