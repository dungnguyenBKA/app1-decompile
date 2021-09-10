package defpackage;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: vf  reason: default package */
public final class vf implements tf {
    private final Map<String, List<uf>> b;
    private volatile Map<String, String> c;

    /* renamed from: vf$a */
    public static final class a {
        private static final String b;
        private static final Map<String, List<uf>> c;
        private Map<String, List<uf>> a = c;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            b = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(property)));
            }
            c = Collections.unmodifiableMap(hashMap);
        }

        public vf a() {
            return new vf(this.a);
        }
    }

    /* renamed from: vf$b */
    static final class b implements uf {
        private final String a;

        b(String str) {
            this.a = str;
        }

        @Override // defpackage.uf
        public String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.a.equals(((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            StringBuilder q = ic.q("StringHeaderFactory{value='");
            q.append(this.a);
            q.append('\'');
            q.append('}');
            return q.toString();
        }
    }

    vf(Map<String, List<uf>> map) {
        this.b = Collections.unmodifiableMap(map);
    }

    private Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<uf>> entry : this.b.entrySet()) {
            List<uf> value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = value.size();
            for (int i = 0; i < size; i++) {
                String a2 = value.get(i).a();
                if (!TextUtils.isEmpty(a2)) {
                    sb.append(a2);
                    if (i != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    @Override // defpackage.tf
    public Map<String, String> a() {
        if (this.c == null) {
            synchronized (this) {
                if (this.c == null) {
                    this.c = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof vf) {
            return this.b.equals(((vf) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("LazyHeaders{headers=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }
}
