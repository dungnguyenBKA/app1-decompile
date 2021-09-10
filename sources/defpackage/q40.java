package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

/* access modifiers changed from: package-private */
/* renamed from: q40  reason: default package */
public final class q40 implements h40, j40 {
    private boolean a = true;
    private final JsonWriter b;
    private final Map<Class<?>, g40<?>> c;
    private final Map<Class<?>, i40<?>> d;
    private final g40<Object> e;
    private final boolean f;

    q40(Writer writer, Map<Class<?>, g40<?>> map, Map<Class<?>, i40<?>> map2, g40<Object> g40, boolean z) {
        this.b = new JsonWriter(writer);
        this.c = map;
        this.d = map2;
        this.e = g40;
        this.f = z;
    }

    private void j() {
        if (!this.a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }

    @Override // defpackage.h40
    public h40 a(f40 f40, boolean z) {
        String a2 = f40.a();
        j();
        this.b.name(a2);
        j();
        this.b.value(z);
        return this;
    }

    @Override // defpackage.h40
    public h40 b(f40 f40, long j) {
        String a2 = f40.a();
        j();
        this.b.name(a2);
        j();
        this.b.value(j);
        return this;
    }

    @Override // defpackage.h40
    public h40 c(f40 f40, int i) {
        String a2 = f40.a();
        j();
        this.b.name(a2);
        j();
        this.b.value((long) i);
        return this;
    }

    @Override // defpackage.j40
    public j40 d(String str) {
        j();
        this.b.value(str);
        return this;
    }

    @Override // defpackage.j40
    public j40 e(boolean z) {
        j();
        this.b.value(z);
        return this;
    }

    @Override // defpackage.h40
    public h40 f(f40 f40, Object obj) {
        return h(f40.a(), obj);
    }

    /* access modifiers changed from: package-private */
    public q40 g(Object obj, boolean z) {
        Class<?> cls;
        int i = 0;
        if (z) {
            if (obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number)) {
                Object[] objArr = new Object[1];
                if (obj == null) {
                    cls = null;
                } else {
                    cls = obj.getClass();
                }
                objArr[0] = cls;
                throw new e40(String.format("%s cannot be encoded inline", objArr));
            }
        }
        if (obj == null) {
            this.b.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.b.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                j();
                this.b.value(Base64.encodeToString((byte[]) obj, 2));
                return this;
            }
            this.b.beginArray();
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int length = iArr.length;
                while (i < length) {
                    this.b.value((long) iArr[i]);
                    i++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i < length2) {
                    long j = jArr[i];
                    j();
                    this.b.value(j);
                    i++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i < length3) {
                    this.b.value(dArr[i]);
                    i++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i < length4) {
                    this.b.value(zArr[i]);
                    i++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    g(number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    g(obj2, false);
                }
            }
            this.b.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.b.beginArray();
            for (Object obj3 : (Collection) obj) {
                g(obj3, false);
            }
            this.b.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.b.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    h((String) key, entry.getValue());
                } catch (ClassCastException e2) {
                    throw new e40(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e2);
                }
            }
            this.b.endObject();
            return this;
        } else {
            g40<?> g40 = this.c.get(obj.getClass());
            if (g40 != null) {
                if (!z) {
                    this.b.beginObject();
                }
                g40.a(obj, this);
                if (!z) {
                    this.b.endObject();
                }
                return this;
            }
            i40<?> i40 = this.d.get(obj.getClass());
            if (i40 != null) {
                i40.a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                String name = ((Enum) obj).name();
                j();
                this.b.value(name);
                return this;
            } else {
                g40<Object> g402 = this.e;
                if (!z) {
                    this.b.beginObject();
                }
                g402.a(obj, this);
                if (!z) {
                    this.b.endObject();
                }
                return this;
            }
        }
    }

    public q40 h(String str, Object obj) {
        if (!this.f) {
            j();
            this.b.name(str);
            if (obj != null) {
                return g(obj, false);
            }
            this.b.nullValue();
            return this;
        } else if (obj == null) {
            return this;
        } else {
            j();
            this.b.name(str);
            return g(obj, false);
        }
    }

    /* access modifiers changed from: package-private */
    public void i() {
        j();
        this.b.flush();
    }
}
