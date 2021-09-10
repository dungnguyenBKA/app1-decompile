package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

/* renamed from: j70  reason: default package */
public final class j70 {
    private final Map<Type, l60<?>> a;
    private final x80 b = x80.a();

    /* renamed from: j70$a */
    class a implements w70<T> {
        final /* synthetic */ l60 a;
        final /* synthetic */ Type b;

        a(j70 j70, l60 l60, Type type) {
            this.a = l60;
            this.b = type;
        }

        @Override // defpackage.w70
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    /* renamed from: j70$b */
    class b implements w70<T> {
        final /* synthetic */ l60 a;
        final /* synthetic */ Type b;

        b(j70 j70, l60 l60, Type type) {
            this.a = l60;
            this.b = type;
        }

        @Override // defpackage.w70
        public T a() {
            return (T) this.a.a(this.b);
        }
    }

    public j70(Map<Type, l60<?>> map) {
        this.a = map;
    }

    public <T> w70<T> a(z80<T> z80) {
        k70 k70;
        Type type = z80.getType();
        Class<? super T> rawType = z80.getRawType();
        l60<?> l60 = this.a.get(type);
        if (l60 != null) {
            return new a(this, l60, type);
        }
        l60<?> l602 = this.a.get(rawType);
        if (l602 != null) {
            return new b(this, l602, type);
        }
        w70<T> w70 = null;
        try {
            Constructor<? super T> declaredConstructor = rawType.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.b.b(declaredConstructor);
            }
            k70 = new k70(this, declaredConstructor);
        } catch (NoSuchMethodException unused) {
            k70 = null;
        }
        if (k70 != null) {
            return k70;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            if (SortedSet.class.isAssignableFrom(rawType)) {
                w70 = new l70(this);
            } else if (EnumSet.class.isAssignableFrom(rawType)) {
                w70 = new m70(this, type);
            } else if (Set.class.isAssignableFrom(rawType)) {
                w70 = new n70(this);
            } else if (Queue.class.isAssignableFrom(rawType)) {
                w70 = new o70(this);
            } else {
                w70 = new p70(this);
            }
        } else if (Map.class.isAssignableFrom(rawType)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
                w70 = new q70(this);
            } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
                w70 = new e70(this);
            } else if (SortedMap.class.isAssignableFrom(rawType)) {
                w70 = new f70(this);
            } else if (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(z80.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) {
                w70 = new h70(this);
            } else {
                w70 = new g70(this);
            }
        }
        if (w70 != null) {
            return w70;
        }
        return new i70(this, rawType, type);
    }

    public String toString() {
        return this.a.toString();
    }
}
