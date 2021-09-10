package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

@AutoValue
public abstract class g {

    public static class a {
        private mv a;
        private Map<yr, b> b = new HashMap();

        public a a(yr yrVar, b bVar) {
            this.b.put(yrVar, bVar);
            return this;
        }

        public g b() {
            Objects.requireNonNull(this.a, "missing required property: clock");
            int size = this.b.keySet().size();
            yr.values();
            if (size >= 3) {
                Map<yr, b> map = this.b;
                this.b = new HashMap();
                return new c(this.a, map);
            }
            throw new IllegalStateException("Not all priorities have been configured");
        }

        public a c(mv mvVar) {
            this.a = mvVar;
            return this;
        }
    }

    @AutoValue
    public static abstract class b {

        @AutoValue.Builder
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j);

            public abstract a c(Set<c> set);

            public abstract a d(long j);
        }

        public static a a() {
            d.b bVar = new d.b();
            bVar.c(Collections.emptySet());
            return bVar;
        }

        /* access modifiers changed from: package-private */
        public abstract long b();

        /* access modifiers changed from: package-private */
        public abstract Set<c> c();

        /* access modifiers changed from: package-private */
        public abstract long d();
    }

    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* access modifiers changed from: package-private */
    public abstract mv a();

    public long b(yr yrVar, long j, int i) {
        long a2 = j - a().a();
        b bVar = c().get(yrVar);
        long b2 = bVar.b();
        int i2 = i - 1;
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log((double) ((b2 > 1 ? b2 : 2) * ((long) i2))));
        double pow = Math.pow(3.0d, (double) i2);
        double d = (double) b2;
        Double.isNaN(d);
        Double.isNaN(d);
        return Math.min(Math.max((long) (pow * d * max), a2), bVar.d());
    }

    /* access modifiers changed from: package-private */
    public abstract Map<yr, b> c();
}
