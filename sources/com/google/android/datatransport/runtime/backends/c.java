package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import java.util.Objects;

final class c extends h {
    private final Context a;
    private final mv b;
    private final mv c;
    private final String d;

    c(Context context, mv mvVar, mv mvVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.a = context;
        Objects.requireNonNull(mvVar, "Null wallClock");
        this.b = mvVar;
        Objects.requireNonNull(mvVar2, "Null monotonicClock");
        this.c = mvVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.d = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public Context a() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public String b() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public mv c() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public mv d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!this.a.equals(hVar.a()) || !this.b.equals(hVar.d()) || !this.c.equals(hVar.c()) || !this.d.equals(hVar.b())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("CreationContext{applicationContext=");
        q.append(this.a);
        q.append(", wallClock=");
        q.append(this.b);
        q.append(", monotonicClock=");
        q.append(this.c);
        q.append(", backendName=");
        return ic.l(q, this.d, "}");
    }
}
