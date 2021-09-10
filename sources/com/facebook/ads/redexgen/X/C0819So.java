package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: com.facebook.ads.redexgen.X.So  reason: case insensitive filesystem */
public final class C0819So<K, V> extends AnonymousClass2X<K, V> implements Map<K, V> {
    public AnonymousClass2U<K, V> A00;

    private AnonymousClass2U<K, V> A00() {
        if (this.A00 == null) {
            this.A00 = new C0818Sn(this);
        }
        return this.A00;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return A00().A0C();
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return A00().A0D();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: com.facebook.ads.redexgen.X.So<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        A0E(super.A00 + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return A00().A0A();
    }
}
