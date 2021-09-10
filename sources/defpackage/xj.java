package defpackage;

import com.bumptech.glide.load.l;
import java.util.ArrayList;
import java.util.List;

/* renamed from: xj  reason: default package */
public class xj {
    private final List<a<?>> a = new ArrayList();

    /* access modifiers changed from: private */
    /* renamed from: xj$a */
    public static final class a<T> {
        private final Class<T> a;
        final l<T> b;

        a(Class<T> cls, l<T> lVar) {
            this.a = cls;
            this.b = lVar;
        }

        /* access modifiers changed from: package-private */
        public boolean a(Class<?> cls) {
            return this.a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(Class<Z> cls, l<Z> lVar) {
        this.a.add(new a<>(cls, lVar));
    }

    /* JADX DEBUG: Type inference failed for r5v3. Raw type applied. Possible types: com.bumptech.glide.load.l<T>, com.bumptech.glide.load.l<Z> */
    public synchronized <Z> l<Z> b(Class<Z> cls) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            a<?> aVar = this.a.get(i);
            if (aVar.a(cls)) {
                return (l<T>) aVar.b;
            }
        }
        return null;
    }
}
