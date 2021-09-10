package defpackage;

import com.bumptech.glide.load.g;
import java.security.MessageDigest;
import java.util.Objects;

/* renamed from: xk  reason: default package */
public final class xk implements g {
    private final Object b;

    public xk(Object obj) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(g.a));
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof xk) {
            return this.b.equals(((xk) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("ObjectKey{object=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }
}
