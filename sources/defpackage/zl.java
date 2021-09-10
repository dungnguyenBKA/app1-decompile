package defpackage;

import android.os.Bundle;
import java.util.ArrayList;

/* renamed from: zl  reason: default package */
public final class zl {
    private final Bundle a = new Bundle();

    public Bundle a() {
        return this.a;
    }

    public zl b(String str, boolean z) {
        this.a.putBoolean(str, z);
        return this;
    }

    public zl c(String str, int i) {
        this.a.putInt(str, i);
        return this;
    }

    public Object clone() {
        return new Bundle(this.a);
    }

    public zl d(String str, ArrayList<String> arrayList) {
        this.a.putStringArrayList(str, arrayList);
        return this;
    }

    public synchronized String toString() {
        return this.a.toString();
    }
}
