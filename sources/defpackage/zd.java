package defpackage;

import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;
import java.util.Map;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: zd  reason: default package */
public class zd implements g {
    private final Object b;
    private final int c;
    private final int d;
    private final Class<?> e;
    private final Class<?> f;
    private final g g;
    private final Map<Class<?>, m<?>> h;
    private final i i;
    private int j;

    zd(Object obj, g gVar, int i2, int i3, Map<Class<?>, m<?>> map, Class<?> cls, Class<?> cls2, i iVar) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.b = obj;
        Objects.requireNonNull(gVar, "Signature must not be null");
        this.g = gVar;
        this.c = i2;
        this.d = i3;
        Objects.requireNonNull(map, "Argument must not be null");
        this.h = map;
        Objects.requireNonNull(cls, "Resource class must not be null");
        this.e = cls;
        Objects.requireNonNull(cls2, "Transcode class must not be null");
        this.f = cls2;
        Objects.requireNonNull(iVar, "Argument must not be null");
        this.i = iVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof zd)) {
            return false;
        }
        zd zdVar = (zd) obj;
        if (!this.b.equals(zdVar.b) || !this.g.equals(zdVar.g) || this.d != zdVar.d || this.c != zdVar.c || !this.h.equals(zdVar.h) || !this.e.equals(zdVar.e) || !this.f.equals(zdVar.f) || !this.i.equals(zdVar.i)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.j == 0) {
            int hashCode = this.b.hashCode();
            this.j = hashCode;
            int hashCode2 = this.g.hashCode() + (hashCode * 31);
            this.j = hashCode2;
            int i2 = (hashCode2 * 31) + this.c;
            this.j = i2;
            int i3 = (i2 * 31) + this.d;
            this.j = i3;
            int hashCode3 = this.h.hashCode() + (i3 * 31);
            this.j = hashCode3;
            int hashCode4 = this.e.hashCode() + (hashCode3 * 31);
            this.j = hashCode4;
            int hashCode5 = this.f.hashCode() + (hashCode4 * 31);
            this.j = hashCode5;
            this.j = this.i.hashCode() + (hashCode5 * 31);
        }
        return this.j;
    }

    public String toString() {
        StringBuilder q = ic.q("EngineKey{model=");
        q.append(this.b);
        q.append(", width=");
        q.append(this.c);
        q.append(", height=");
        q.append(this.d);
        q.append(", resourceClass=");
        q.append(this.e);
        q.append(", transcodeClass=");
        q.append(this.f);
        q.append(", signature=");
        q.append(this.g);
        q.append(", hashCode=");
        q.append(this.j);
        q.append(", transformations=");
        q.append(this.h);
        q.append(", options=");
        q.append(this.i);
        q.append('}');
        return q.toString();
    }
}
