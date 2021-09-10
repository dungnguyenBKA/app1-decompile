package defpackage;

import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: du  reason: default package */
public final class du extends ju {
    private final long a;
    private final it b;
    private final et c;

    du(long j, it itVar, et etVar) {
        this.a = j;
        Objects.requireNonNull(itVar, "Null transportContext");
        this.b = itVar;
        Objects.requireNonNull(etVar, "Null event");
        this.c = etVar;
    }

    @Override // defpackage.ju
    public et a() {
        return this.c;
    }

    @Override // defpackage.ju
    public long b() {
        return this.a;
    }

    @Override // defpackage.ju
    public it c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ju)) {
            return false;
        }
        ju juVar = (ju) obj;
        if (this.a != juVar.b() || !this.b.equals(juVar.c()) || !this.c.equals(juVar.a())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public String toString() {
        StringBuilder q = ic.q("PersistedEvent{id=");
        q.append(this.a);
        q.append(", transportContext=");
        q.append(this.b);
        q.append(", event=");
        q.append(this.c);
        q.append("}");
        return q.toString();
    }
}
