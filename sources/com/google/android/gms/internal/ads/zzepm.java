package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public abstract class zzepm extends zzepk implements zzbs {
    private int flags;
    private int version;

    protected zzepm(String str) {
        super(str);
    }

    public final int getVersion() {
        if (!this.zzjay) {
            zzbmj();
        }
        return this.version;
    }

    /* access modifiers changed from: protected */
    public final long zzr(ByteBuffer byteBuffer) {
        this.version = zzbp.zza(byteBuffer.get());
        this.flags = zzbp.zza(byteBuffer.get()) + (zzbp.zzg(byteBuffer) << 8) + 0;
        return 4;
    }
}
