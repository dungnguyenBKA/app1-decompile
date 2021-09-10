package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: ch0  reason: default package */
public final class ch0 {
    private final String[] a;

    /* renamed from: ch0$a */
    public static final class a {
        final List<String> a = new ArrayList(20);

        /* access modifiers changed from: package-private */
        public a a(String str, String str2) {
            this.a.add(str);
            this.a.add(str2.trim());
            return this;
        }

        public ch0 b() {
            return new ch0(this);
        }

        public a c(String str) {
            int i = 0;
            while (i < this.a.size()) {
                if (str.equalsIgnoreCase(this.a.get(i))) {
                    this.a.remove(i);
                    this.a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }
    }

    ch0(a aVar) {
        List<String> list = aVar.a;
        this.a = (String[]) list.toArray(new String[list.size()]);
    }

    static void a(String str) {
        Objects.requireNonNull(str, "name == null");
        if (!str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(rh0.o("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            return;
        }
        throw new IllegalArgumentException("name is empty");
    }

    static void b(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    throw new IllegalArgumentException(rh0.o("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException(ic.j("value for name ", str2, " == null"));
    }

    @Nullable
    public String c(String str) {
        String[] strArr = this.a;
        int length = strArr.length;
        do {
            length -= 2;
            if (length < 0) {
                return null;
            }
        } while (!str.equalsIgnoreCase(strArr[length]));
        return strArr[length + 1];
    }

    public String d(int i) {
        return this.a[i * 2];
    }

    public a e() {
        a aVar = new a();
        Collections.addAll(aVar.a, this.a);
        return aVar;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ch0) && Arrays.equals(((ch0) obj).a, this.a);
    }

    public int f() {
        return this.a.length / 2;
    }

    public String g(int i) {
        return this.a[(i * 2) + 1];
    }

    public int hashCode() {
        return Arrays.hashCode(this.a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int f = f();
        for (int i = 0; i < f; i++) {
            sb.append(d(i));
            sb.append(": ");
            sb.append(g(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
