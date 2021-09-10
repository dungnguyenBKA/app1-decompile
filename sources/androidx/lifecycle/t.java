package androidx.lifecycle;

public class t {
    private final a a;
    private final u b;

    public interface a {
        <T extends s> T a(Class<T> cls);
    }

    /* access modifiers changed from: package-private */
    public static abstract class b implements a {
        b() {
        }

        @Override // androidx.lifecycle.t.a
        public <T extends s> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract <T extends s> T b(String str, Class<T> cls);
    }

    public t(u uVar, a aVar) {
        this.a = aVar;
        this.b = uVar;
    }

    public <T extends s> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            String i = ic.i("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            T t = (T) this.b.b(i);
            if (cls.isInstance(t)) {
                return t;
            }
            a aVar = this.a;
            T t2 = aVar instanceof b ? (T) ((b) aVar).b(i, cls) : (T) aVar.a(cls);
            this.b.c(i, t2);
            return t2;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
