package androidx.work;

import androidx.work.j;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

public abstract class o {
    private UUID a;
    private c6 b;
    private Set<String> c;

    public static abstract class a<B extends a, W extends o> {
        UUID a = UUID.randomUUID();
        c6 b;
        Set<String> c = new HashSet();

        a(Class<? extends ListenableWorker> cls) {
            this.b = new c6(this.a.toString(), cls.getName());
            this.c.add(cls.getName());
        }

        public final B a(String str) {
            this.c.add(str);
            return (j.a) this;
        }

        public final W b() {
            j jVar = new j((j.a) this);
            this.a = UUID.randomUUID();
            c6 c6Var = new c6(this.b);
            this.b = c6Var;
            c6Var.a = this.a.toString();
            return jVar;
        }

        public final B c(c cVar) {
            this.b.j = cVar;
            return (j.a) this;
        }

        public final B d(e eVar) {
            this.b.e = eVar;
            return (j.a) this;
        }
    }

    protected o(UUID uuid, c6 c6Var, Set<String> set) {
        this.a = uuid;
        this.b = c6Var;
        this.c = set;
    }

    public String a() {
        return this.a.toString();
    }

    public Set<String> b() {
        return this.c;
    }

    public c6 c() {
        return this.b;
    }
}
