package defpackage;

import com.google.ads.mediation.facebook.FacebookAdapter;

/* renamed from: gd0  reason: default package */
public final class gd0 {
    private final String a;
    private final String b;

    public gd0(String str, String str2) {
        gg0.e(str, "key");
        gg0.e(str2, FacebookAdapter.KEY_ID);
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gd0)) {
            return false;
        }
        gd0 gd0 = (gd0) obj;
        return gg0.a(this.a, gd0.a) && gg0.a(this.b, gd0.b);
    }

    public int hashCode() {
        String str = this.a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        StringBuilder q = ic.q("AdId(key=");
        q.append(this.a);
        q.append(", id=");
        return ic.l(q, this.b, ")");
    }
}
