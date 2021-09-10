package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public final class zzbv extends zzepk {
    private ByteBuffer zzdr;

    public zzbv(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzepk
    public final void zzl(ByteBuffer byteBuffer) {
        this.zzdr = byteBuffer;
        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
    }
}
