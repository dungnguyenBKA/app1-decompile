package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* access modifiers changed from: package-private */
/* renamed from: g9  reason: default package */
public abstract class g9<V, O> implements f9<V, O> {
    final List<ec<V>> a;

    g9(V v) {
        this.a = Collections.singletonList(new ec(v));
    }

    @Override // defpackage.f9
    public boolean c() {
        return this.a.isEmpty() || (this.a.size() == 1 && this.a.get(0).h());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.a.toArray()));
        }
        return sb.toString();
    }

    g9(List<ec<V>> list) {
        this.a = list;
    }
}
