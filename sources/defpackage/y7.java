package defpackage;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* renamed from: y7  reason: default package */
public class y7 {
    private final List<s7<s9, Path>> a;
    private final List<s7<Integer, Integer>> b;
    private final List<n9> c;

    public y7(List<n9> list) {
        this.c = list;
        this.a = new ArrayList(list.size());
        this.b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.a.add(list.get(i).b().a());
            this.b.add(list.get(i).c().a());
        }
    }

    public List<s7<s9, Path>> a() {
        return this.a;
    }

    public List<n9> b() {
        return this.c;
    }

    public List<s7<Integer, Integer>> c() {
        return this.b;
    }
}
