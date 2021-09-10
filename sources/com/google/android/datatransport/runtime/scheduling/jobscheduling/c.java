package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Map;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class c extends g {
    private final mv a;
    private final Map<yr, g.b> b;

    c(mv mvVar, Map<yr, g.b> map) {
        Objects.requireNonNull(mvVar, "Null clock");
        this.a = mvVar;
        Objects.requireNonNull(map, "Null values");
        this.b = map;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    public mv a() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    public Map<yr, g.b> c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (!this.a.equals(gVar.a()) || !this.b.equals(gVar.c())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("SchedulerConfig{clock=");
        q.append(this.a);
        q.append(", values=");
        q.append(this.b);
        q.append("}");
        return q.toString();
    }
}
