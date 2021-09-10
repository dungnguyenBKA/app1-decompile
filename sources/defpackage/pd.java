package defpackage;

import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* access modifiers changed from: package-private */
/* renamed from: pd  reason: default package */
public final class pd implements g {
    private final g b;
    private final g c;

    pd(g gVar, g gVar2) {
        this.b = gVar;
        this.c = gVar2;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
        this.c.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof pd)) {
            return false;
        }
        pd pdVar = (pd) obj;
        if (!this.b.equals(pdVar.b) || !this.c.equals(pdVar.c)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder q = ic.q("DataCacheKey{sourceKey=");
        q.append(this.b);
        q.append(", signature=");
        q.append(this.c);
        q.append('}');
        return q.toString();
    }
}
