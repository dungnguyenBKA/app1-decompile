package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class zzepk implements zzbs {
    private static zzept zzdc = zzept.zzn(zzepk.class);
    private String type;
    private long zzawv;
    private zzbr zzjaw;
    boolean zzjay;
    private boolean zzjaz;
    private ByteBuffer zzjba;
    private long zzjbb;
    private long zzjbc = -1;
    private zzepn zzjbd;
    private ByteBuffer zzjbe = null;

    protected zzepk(String str) {
        this.type = str;
        this.zzjaz = true;
        this.zzjay = true;
    }

    private final synchronized void zzbmi() {
        if (!this.zzjaz) {
            try {
                zzept zzept = zzdc;
                String valueOf = String.valueOf(this.type);
                zzept.zzio(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                this.zzjba = this.zzjbd.zzh(this.zzjbb, this.zzjbc);
                this.zzjaz = true;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzepn zzepn, ByteBuffer byteBuffer, long j, zzbn zzbn) {
        long position = zzepn.position();
        this.zzjbb = position;
        this.zzawv = position - ((long) byteBuffer.remaining());
        this.zzjbc = j;
        this.zzjbd = zzepn;
        zzepn.zzfc(zzepn.position() + j);
        this.zzjaz = false;
        this.zzjay = false;
        zzbmj();
    }

    public final synchronized void zzbmj() {
        zzbmi();
        zzept zzept = zzdc;
        String valueOf = String.valueOf(this.type);
        zzept.zzio(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
        ByteBuffer byteBuffer = this.zzjba;
        if (byteBuffer != null) {
            this.zzjay = true;
            byteBuffer.rewind();
            zzl(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                this.zzjbe = byteBuffer.slice();
            }
            this.zzjba = null;
        }
    }

    /* access modifiers changed from: protected */
    public abstract void zzl(ByteBuffer byteBuffer);

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzbr zzbr) {
        this.zzjaw = zzbr;
    }
}
