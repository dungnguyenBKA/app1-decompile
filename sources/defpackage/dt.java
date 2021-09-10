package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* renamed from: dt  reason: default package */
public final class dt {
    private final wr a;
    private final byte[] b;

    public dt(wr wrVar, byte[] bArr) {
        Objects.requireNonNull(wrVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.a = wrVar;
        this.b = bArr;
    }

    public byte[] a() {
        return this.b;
    }

    public wr b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dt)) {
            return false;
        }
        dt dtVar = (dt) obj;
        if (!this.a.equals(dtVar.a)) {
            return false;
        }
        return Arrays.equals(this.b, dtVar.b);
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public String toString() {
        StringBuilder q = ic.q("EncodedPayload{encoding=");
        q.append(this.a);
        q.append(", bytes=[...]}");
        return q.toString();
    }
}
