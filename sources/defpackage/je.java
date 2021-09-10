package defpackage;

import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.m;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* renamed from: je  reason: default package */
final class je implements g {
    private static final el<Class<?>, byte[]> j = new el<>(50);
    private final oe b;
    private final g c;
    private final g d;
    private final int e;
    private final int f;
    private final Class<?> g;
    private final i h;
    private final m<?> i;

    je(oe oeVar, g gVar, g gVar2, int i2, int i3, m<?> mVar, Class<?> cls, i iVar) {
        this.b = oeVar;
        this.c = gVar;
        this.d = gVar2;
        this.e = i2;
        this.f = i3;
        this.i = mVar;
        this.g = cls;
        this.h = iVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.b.c(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f).array();
        this.d.a(messageDigest);
        this.c.a(messageDigest);
        messageDigest.update(bArr);
        m<?> mVar = this.i;
        if (mVar != null) {
            mVar.a(messageDigest);
        }
        this.h.a(messageDigest);
        el<Class<?>, byte[]> elVar = j;
        byte[] b2 = elVar.b(this.g);
        if (b2 == null) {
            b2 = this.g.getName().getBytes(g.a);
            elVar.f(this.g, b2);
        }
        messageDigest.update(b2);
        this.b.d(bArr);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof je)) {
            return false;
        }
        je jeVar = (je) obj;
        if (this.f != jeVar.f || this.e != jeVar.e || !hl.b(this.i, jeVar.i) || !this.g.equals(jeVar.g) || !this.c.equals(jeVar.c) || !this.d.equals(jeVar.d) || !this.h.equals(jeVar.h)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        int hashCode = ((((this.d.hashCode() + (this.c.hashCode() * 31)) * 31) + this.e) * 31) + this.f;
        m<?> mVar = this.i;
        if (mVar != null) {
            hashCode = (hashCode * 31) + mVar.hashCode();
        }
        int hashCode2 = this.g.hashCode();
        return this.h.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder q = ic.q("ResourceCacheKey{sourceKey=");
        q.append(this.c);
        q.append(", signature=");
        q.append(this.d);
        q.append(", width=");
        q.append(this.e);
        q.append(", height=");
        q.append(this.f);
        q.append(", decodedResourceClass=");
        q.append(this.g);
        q.append(", transformation='");
        q.append(this.i);
        q.append('\'');
        q.append(", options=");
        q.append(this.h);
        q.append('}');
        return q.toString();
    }
}
