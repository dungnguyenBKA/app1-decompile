package defpackage;

import androidx.core.app.b;
import defpackage.ch0;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;

/* renamed from: jh0  reason: default package */
public final class jh0 {
    final dh0 a;
    final String b;
    final ch0 c;
    @Nullable
    final kh0 d;
    final Map<Class<?>, Object> e;
    @Nullable
    private volatile ng0 f;

    jh0(a aVar) {
        Map<Class<?>, Object> map;
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = new ch0(aVar.c);
        this.d = aVar.d;
        Map<Class<?>, Object> map2 = aVar.e;
        byte[] bArr = rh0.a;
        if (map2.isEmpty()) {
            map = Collections.emptyMap();
        } else {
            map = Collections.unmodifiableMap(new LinkedHashMap(map2));
        }
        this.e = map;
    }

    @Nullable
    public kh0 a() {
        return this.d;
    }

    public ng0 b() {
        ng0 ng0 = this.f;
        if (ng0 != null) {
            return ng0;
        }
        ng0 j = ng0.j(this.c);
        this.f = j;
        return j;
    }

    @Nullable
    public String c(String str) {
        return this.c.c(str);
    }

    public ch0 d() {
        return this.c;
    }

    public boolean e() {
        return this.a.a.equals("https");
    }

    public String f() {
        return this.b;
    }

    public a g() {
        return new a(this);
    }

    public dh0 h() {
        return this.a;
    }

    public String toString() {
        StringBuilder q = ic.q("Request{method=");
        q.append(this.b);
        q.append(", url=");
        q.append(this.a);
        q.append(", tags=");
        q.append(this.e);
        q.append('}');
        return q.toString();
    }

    /* renamed from: jh0$a */
    public static class a {
        @Nullable
        dh0 a;
        String b;
        ch0.a c;
        @Nullable
        kh0 d;
        Map<Class<?>, Object> e;

        public a() {
            this.e = Collections.emptyMap();
            this.b = HttpGet.METHOD_NAME;
            this.c = new ch0.a();
        }

        public a a(String str, String str2) {
            ch0.a aVar = this.c;
            Objects.requireNonNull(aVar);
            ch0.a(str);
            ch0.b(str2, str);
            aVar.a.add(str);
            aVar.a.add(str2.trim());
            return this;
        }

        public jh0 b() {
            if (this.a != null) {
                return new jh0(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a c(String str, String str2) {
            ch0.a aVar = this.c;
            Objects.requireNonNull(aVar);
            ch0.a(str);
            ch0.b(str2, str);
            aVar.c(str);
            aVar.a.add(str);
            aVar.a.add(str2.trim());
            return this;
        }

        public a d(ch0 ch0) {
            this.c = ch0.e();
            return this;
        }

        public a e(String str, @Nullable kh0 kh0) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else if (kh0 == null || b.o0(str)) {
                if (kh0 == null) {
                    if (str.equals(HttpPost.METHOD_NAME) || str.equals(HttpPut.METHOD_NAME) || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                        throw new IllegalArgumentException(ic.j("method ", str, " must have a request body."));
                    }
                }
                this.b = str;
                this.d = kh0;
                return this;
            } else {
                throw new IllegalArgumentException(ic.j("method ", str, " must not have a request body."));
            }
        }

        public a f(String str) {
            this.c.c(str);
            return this;
        }

        public a g(String str) {
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                StringBuilder q = ic.q("http:");
                q.append(str.substring(3));
                str = q.toString();
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                StringBuilder q2 = ic.q("https:");
                q2.append(str.substring(4));
                str = q2.toString();
            }
            h(dh0.i(str));
            return this;
        }

        public a h(dh0 dh0) {
            Objects.requireNonNull(dh0, "url == null");
            this.a = dh0;
            return this;
        }

        a(jh0 jh0) {
            Map<Class<?>, Object> map;
            this.e = Collections.emptyMap();
            this.a = jh0.a;
            this.b = jh0.b;
            this.d = jh0.d;
            if (jh0.e.isEmpty()) {
                map = Collections.emptyMap();
            } else {
                map = new LinkedHashMap<>(jh0.e);
            }
            this.e = map;
            this.c = jh0.c.e();
        }
    }
}
