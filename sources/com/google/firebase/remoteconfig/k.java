package com.google.firebase.remoteconfig;

public class k {
    private final long a;
    private final long b;

    public static class b {
        private long a = 60;
        private long b = com.google.firebase.remoteconfig.internal.k.j;

        public k c() {
            return new k(this, null);
        }

        public b d(long j) {
            if (j >= 0) {
                this.a = j;
                return this;
            }
            throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
        }

        public b e(long j) {
            if (j >= 0) {
                this.b = j;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
        }
    }

    k(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }
}
