package defpackage;

import java.util.Comparator;

/* renamed from: mp  reason: default package */
public final /* synthetic */ class mp implements Comparator {
    public static final /* synthetic */ mp b = new mp();

    private /* synthetic */ mp() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = ((fq) obj).d;
        int i2 = ((fq) obj2).d;
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }
}
