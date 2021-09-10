package com.bumptech.glide.load;

import java.security.MessageDigest;

public final class i implements g {
    private final x<h<?>, Object> b = new zk();

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        for (int i = 0; i < this.b.size(); i++) {
            this.b.h(i).e(this.b.l(i), messageDigest);
        }
    }

    public <T> T c(h<T> hVar) {
        return this.b.e(hVar) >= 0 ? (T) this.b.getOrDefault(hVar, null) : hVar.b();
    }

    public void d(i iVar) {
        this.b.i(iVar.b);
    }

    public <T> i e(h<T> hVar, T t) {
        this.b.put(hVar, t);
        return this;
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.b.equals(((i) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("Options{values=");
        q.append(this.b);
        q.append('}');
        return q.toString();
    }
}
