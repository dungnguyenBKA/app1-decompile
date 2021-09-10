package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class w {
    public final Map<String, Object> a = new HashMap();
    public View b;
    final ArrayList<Transition> c = new ArrayList<>();

    @Deprecated
    public w() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.b == wVar.b && this.a.equals(wVar.a);
    }

    public int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder q = ic.q("TransitionValues@");
        q.append(Integer.toHexString(hashCode()));
        q.append(":\n");
        StringBuilder r = ic.r(q.toString(), "    view = ");
        r.append(this.b);
        r.append("\n");
        String i = ic.i(r.toString(), "    values:");
        for (String str : this.a.keySet()) {
            i = i + "    " + str + ": " + this.a.get(str) + "\n";
        }
        return i;
    }

    public w(View view) {
        this.b = view;
    }
}
