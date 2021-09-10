package defpackage;

import java.util.Objects;

/* renamed from: yh  reason: default package */
public class yh implements he<byte[]> {
    private final byte[] b;

    public yh(byte[] bArr) {
        Objects.requireNonNull(bArr, "Argument must not be null");
        this.b = bArr;
    }

    @Override // defpackage.he
    public void a() {
    }

    @Override // defpackage.he
    public int c() {
        return this.b.length;
    }

    @Override // defpackage.he
    public Class<byte[]> d() {
        return byte[].class;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.he
    public byte[] get() {
        return this.b;
    }
}
