package defpackage;

import javax.annotation.Nullable;

/* renamed from: ki0  reason: default package */
public final class ki0 extends mh0 {
    @Nullable
    private final String b;
    private final long c;
    private final zj0 d;

    public ki0(@Nullable String str, long j, zj0 zj0) {
        this.b = str;
        this.c = j;
        this.d = zj0;
    }

    @Override // defpackage.mh0
    public long contentLength() {
        return this.c;
    }

    @Override // defpackage.mh0
    public fh0 contentType() {
        String str = this.b;
        if (str != null) {
            return fh0.d(str);
        }
        return null;
    }

    @Override // defpackage.mh0
    public zj0 source() {
        return this.d;
    }
}
