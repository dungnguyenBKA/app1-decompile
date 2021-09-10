package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: e10  reason: default package */
public class e10 {
    private String a = null;
    private final Map<String, String> b = new HashMap();

    /* access modifiers changed from: package-private */
    /* renamed from: e10$a */
    public class a extends HashMap<String, String> {
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        a(e10 e10, String str, String str2) {
            this.b = str;
            this.c = str2;
            put(e10.a(str), e10.e(str2));
        }
    }

    static String a(String str) {
        if (str != null) {
            return e(str);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    /* access modifiers changed from: private */
    public static String e(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        return trim.length() > 1024 ? trim.substring(0, 1024) : trim;
    }

    private synchronized void g(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                String e = e(key);
                String e2 = entry.getValue() == null ? "" : e(entry.getValue());
                if (this.b.containsKey(e)) {
                    hashMap.put(e, e2);
                } else {
                    hashMap2.put(e, e2);
                }
            } else {
                throw new IllegalArgumentException("Custom attribute key must not be null.");
            }
        }
        this.b.putAll(hashMap);
        if (this.b.size() + hashMap2.size() > 64) {
            int size = 64 - this.b.size();
            az.f().h("Exceeded maximum number of custom attributes (64).");
            hashMap2.keySet().retainAll(new ArrayList(hashMap2.keySet()).subList(0, size));
        }
        this.b.putAll(hashMap2);
    }

    public Map<String, String> c() {
        return Collections.unmodifiableMap(this.b);
    }

    public String d() {
        return this.a;
    }

    public void f(String str, String str2) {
        g(new a(this, str, str2));
    }

    public void h(String str) {
        this.a = e(str);
    }
}
