package defpackage;

/* renamed from: gl  reason: default package */
public class gl {
    private Class<?> a;
    private Class<?> b;
    private Class<?> c;

    public gl() {
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.a = cls;
        this.b = cls2;
        this.c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gl.class != obj.getClass()) {
            return false;
        }
        gl glVar = (gl) obj;
        return this.a.equals(glVar.a) && this.b.equals(glVar.b) && hl.b(this.c, glVar.c);
    }

    public int hashCode() {
        int hashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Class<?> cls = this.c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        StringBuilder q = ic.q("MultiClassKey{first=");
        q.append(this.a);
        q.append(", second=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }

    public gl(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.a = cls;
        this.b = cls2;
        this.c = cls3;
    }
}
