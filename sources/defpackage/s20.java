package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: s20  reason: default package */
public class s20 {
    private final String a;
    private final Map<String, String> b;
    private final Map<String, String> c = new HashMap();

    public s20(String str, Map<String, String> map) {
        this.a = str;
        this.b = map;
    }

    private String a(String str, Map<String, String> map) {
        String str2;
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        Map.Entry<String, String> next = it.next();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(next.getKey());
        sb2.append("=");
        sb2.append(next.getValue() != null ? next.getValue() : "");
        sb.append(sb2.toString());
        while (it.hasNext()) {
            Map.Entry<String, String> next2 = it.next();
            StringBuilder q = ic.q("&");
            q.append(next2.getKey());
            q.append("=");
            if (next2.getValue() != null) {
                str2 = next2.getValue();
            } else {
                str2 = "";
            }
            q.append(str2);
            sb.append(q.toString());
        }
        String sb3 = sb.toString();
        if (sb3.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return ic.j(str, "?", sb3);
        }
        if (!str.endsWith("&")) {
            sb3 = ic.i("&", sb3);
        }
        return ic.i(str, sb3);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00b1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.u20 b() {
        /*
        // Method dump skipped, instructions count: 183
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s20.b():u20");
    }

    public s20 c(String str, String str2) {
        this.c.put(str, str2);
        return this;
    }
}
