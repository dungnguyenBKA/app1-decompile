package defpackage;

import android.util.SparseArray;

/* renamed from: xs  reason: default package */
public enum xs {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    
    private static final SparseArray<xs> h;

    static {
        xs xsVar;
        xs xsVar2;
        xs xsVar3;
        xs xsVar4;
        xs xsVar5;
        xs xsVar6;
        SparseArray<xs> sparseArray = new SparseArray<>();
        h = sparseArray;
        sparseArray.put(0, xsVar);
        sparseArray.put(1, xsVar2);
        sparseArray.put(2, xsVar3);
        sparseArray.put(3, xsVar4);
        sparseArray.put(4, xsVar5);
        sparseArray.put(-1, xsVar6);
    }

    private xs(int i2) {
    }
}
