package defpackage;

import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: nz  reason: default package */
public final class nz extends l00 {
    private final i20 a;
    private final String b;

    nz(i20 i20, String str) {
        Objects.requireNonNull(i20, "Null report");
        this.a = i20;
        Objects.requireNonNull(str, "Null sessionId");
        this.b = str;
    }

    @Override // defpackage.l00
    public i20 b() {
        return this.a;
    }

    @Override // defpackage.l00
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l00)) {
            return false;
        }
        l00 l00 = (l00) obj;
        if (!this.a.equals(l00.b()) || !this.b.equals(l00.c())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("CrashlyticsReportWithSessionId{report=");
        q.append(this.a);
        q.append(", sessionId=");
        return ic.l(q, this.b, "}");
    }
}
