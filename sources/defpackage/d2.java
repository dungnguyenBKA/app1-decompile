package defpackage;

import android.util.Base64;
import java.util.List;
import java.util.Objects;

/* renamed from: d2  reason: default package */
public final class d2 {
    private final String a;
    private final String b;
    private final String c;
    private final List<List<byte[]>> d;
    private final String e;

    public d2(String str, String str2, String str3, List<List<byte[]>> list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        Objects.requireNonNull(list);
        this.d = list;
        this.e = str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder q = ic.q("FontRequest {mProviderAuthority: ");
        q.append(this.a);
        q.append(", mProviderPackage: ");
        q.append(this.b);
        q.append(", mQuery: ");
        q.append(this.c);
        q.append(", mCertificates:");
        sb.append(q.toString());
        for (int i = 0; i < this.d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        return ic.l(sb, "}", "mCertificatesArray: 0");
    }
}
