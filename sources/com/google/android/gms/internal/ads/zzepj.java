package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public class zzepj extends zzepl implements zzbs {
    private String type;
    private long zzawv;
    private zzbr zzjaw;
    private boolean zzjax;

    public zzepj(String str) {
        this.type = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzbr zzbr) {
        this.zzjaw = zzbr;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzepn zzepn, ByteBuffer byteBuffer, long j, zzbn zzbn) {
        this.zzawv = zzepn.position() - ((long) byteBuffer.remaining());
        this.zzjax = byteBuffer.remaining() == 16;
        zza(zzepn, j, zzbn);
    }

    @Override // com.google.android.gms.internal.ads.zzepl
    public final void zza(zzepn zzepn, long j, zzbn zzbn) {
        this.zzjbd = zzepn;
        long position = zzepn.position();
        this.zzjbi = position;
        this.zzbga = position - ((long) ((this.zzjax || 8 + j >= 4294967296L) ? 16 : 8));
        zzepn.zzfc(zzepn.position() + j);
        this.zzasu = zzepn.position();
        this.zzjbg = zzbn;
    }
}
