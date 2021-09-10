package defpackage;

import android.util.SparseArray;
import java.util.HashMap;

/* renamed from: rv  reason: default package */
public final class rv {
    private static SparseArray<yr> a = new SparseArray<>();
    private static HashMap<yr, Integer> b;

    static {
        HashMap<yr, Integer> hashMap = new HashMap<>();
        b = hashMap;
        hashMap.put(yr.DEFAULT, 0);
        b.put(yr.VERY_LOW, 1);
        b.put(yr.HIGHEST, 2);
        for (yr yrVar : b.keySet()) {
            a.append(b.get(yrVar).intValue(), yrVar);
        }
    }

    public static int a(yr yrVar) {
        Integer num = b.get(yrVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + yrVar);
    }

    public static yr b(int i) {
        yr yrVar = a.get(i);
        if (yrVar != null) {
            return yrVar;
        }
        throw new IllegalArgumentException(ic.f("Unknown Priority for value ", i));
    }
}
