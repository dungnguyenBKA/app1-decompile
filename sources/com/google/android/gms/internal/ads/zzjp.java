package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

public final class zzjp extends zzji {
    public final zzjl zzaok = new zzjl();
    public long zzaol;
    private final int zzaom = 0;
    public ByteBuffer zzdr;

    public zzjp(int i) {
    }

    private final ByteBuffer zzae(int i) {
        ByteBuffer byteBuffer = this.zzdr;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzji
    public final void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.zzdr;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean isEncrypted() {
        return zzab(1073741824);
    }

    public final void zzad(int i) {
        ByteBuffer byteBuffer = this.zzdr;
        if (byteBuffer == null) {
            this.zzdr = zzae(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.zzdr.position();
        int i2 = i + position;
        if (capacity < i2) {
            ByteBuffer zzae = zzae(i2);
            if (position > 0) {
                this.zzdr.position(0);
                this.zzdr.limit(position);
                zzae.put(this.zzdr);
            }
            this.zzdr = zzae;
        }
    }
}
