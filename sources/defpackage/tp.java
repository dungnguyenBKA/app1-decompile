package defpackage;

import java.util.Comparator;

/* renamed from: tp  reason: default package */
public final /* synthetic */ class tp implements Comparator {
    public static final /* synthetic */ tp b = new tp();

    private /* synthetic */ tp() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = ((iq) obj).d;
        int i2 = ((iq) obj2).d;
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }
}
