package defpackage;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* renamed from: k80  reason: default package */
public final class k80 implements a70 {
    private final j70 b;
    final boolean c;

    /* renamed from: k80$a */
    private final class a<K, V> extends z60<Map<K, V>> {
        private final z60<K> a;
        private final z60<V> b;
        private final w70<? extends Map<K, V>> c;

        public a(j60 j60, Type type, z60<K> z60, Type type2, z60<V> z602, w70<? extends Map<K, V>> w70) {
            this.a = new r80(j60, z60, type);
            this.b = new r80(j60, z602, type2);
            this.c = w70;
        }

        @Override // defpackage.z60
        public Object b(a90 a90) {
            b90 x0 = a90.x0();
            if (x0 == b90.NULL) {
                a90.t0();
                return null;
            }
            Map map = (Map) this.c.a();
            if (x0 == b90.BEGIN_ARRAY) {
                a90.j();
                while (a90.j0()) {
                    a90.j();
                    K b2 = this.a.b(a90);
                    if (map.put(b2, this.b.b(a90)) == null) {
                        a90.V();
                    } else {
                        throw new x60("duplicate key: " + ((Object) b2));
                    }
                }
                a90.V();
            } else {
                a90.o();
                while (a90.j0()) {
                    t70.a.a(a90);
                    K b3 = this.a.b(a90);
                    if (map.put(b3, this.b.b(a90)) != null) {
                        throw new x60("duplicate key: " + ((Object) b3));
                    }
                }
                a90.b0();
            }
            return map;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r3v5, resolved type: z60<V> */
        /* JADX DEBUG: Multi-variable search result rejected for r3v16, resolved type: z60<V> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.z60
        public void c(c90 c90, Object obj) {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                c90.n0();
            } else if (!k80.this.c) {
                c90.L();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    c90.l0(String.valueOf(entry.getKey()));
                    this.b.c(c90, entry.getValue());
                }
                c90.b0();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i = 0;
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    z60<K> z60 = this.a;
                    K key = entry2.getKey();
                    Objects.requireNonNull(z60);
                    try {
                        j80 j80 = new j80();
                        z60.c(j80, key);
                        p60 C0 = j80.C0();
                        arrayList.add(C0);
                        arrayList2.add(entry2.getValue());
                        Objects.requireNonNull(C0);
                        z |= (C0 instanceof m60) || (C0 instanceof s60);
                    } catch (IOException e) {
                        throw new q60(e);
                    }
                }
                if (z) {
                    c90.o();
                    int size = arrayList.size();
                    while (i < size) {
                        c90.o();
                        s80.X.c(c90, (p60) arrayList.get(i));
                        this.b.c(c90, arrayList2.get(i));
                        c90.V();
                        i++;
                    }
                    c90.V();
                    return;
                }
                c90.L();
                int size2 = arrayList.size();
                while (i < size2) {
                    p60 p60 = (p60) arrayList.get(i);
                    Objects.requireNonNull(p60);
                    if (p60 instanceof u60) {
                        u60 f = p60.f();
                        if (f.l()) {
                            str = String.valueOf(f.i());
                        } else if (f.j()) {
                            str = Boolean.toString(f.a());
                        } else if (f.m()) {
                            str = f.h();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (p60 instanceof r60) {
                        str = "null";
                    } else {
                        throw new AssertionError();
                    }
                    c90.l0(str);
                    this.b.c(c90, arrayList2.get(i));
                    i++;
                }
                c90.b0();
            }
        }
    }

    public k80(j70 j70, boolean z) {
        this.b = j70;
        this.c = z;
    }

    @Override // defpackage.a70
    public <T> z60<T> a(j60 j60, z80<T> z80) {
        z60<Boolean> z60;
        Type type = z80.getType();
        if (!Map.class.isAssignableFrom(z80.getRawType())) {
            return null;
        }
        Type[] g = d70.g(type, d70.h(type));
        Type type2 = g[0];
        if (type2 == Boolean.TYPE || type2 == Boolean.class) {
            z60 = s80.f;
        } else {
            z60 = j60.e(z80.get(type2));
        }
        return new a(j60, g[0], z60, g[1], j60.e(z80.get(g[1])), this.b.a(z80));
    }
}
