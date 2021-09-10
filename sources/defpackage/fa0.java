package defpackage;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import defpackage.da0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* renamed from: fa0  reason: default package */
public class fa0 implements da0 {
    private final da0 a;

    public fa0(da0 da0) {
        this.a = da0;
    }

    @Override // defpackage.da0
    public void a(View view, JSONObject jSONObject, da0.a aVar, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        v90 a2 = v90.a();
        if (a2 != null) {
            Collection<u90> e = a2.e();
            IdentityHashMap identityHashMap = new IdentityHashMap((e.size() * 2) + 3);
            for (u90 u90 : e) {
                View f = u90.f();
                if (f != null) {
                    boolean z2 = false;
                    if (f.isAttachedToWindow() && f.isShown()) {
                        View view2 = f;
                        while (true) {
                            if (view2 == null) {
                                z2 = true;
                                break;
                            } else if (view2.getAlpha() == 0.0f) {
                                break;
                            } else {
                                ViewParent parent = view2.getParent();
                                view2 = parent instanceof View ? (View) parent : null;
                            }
                        }
                    }
                    if (z2 && (rootView = f.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                        identityHashMap.put(rootView, rootView);
                        float z3 = Build.VERSION.SDK_INT >= 21 ? rootView.getZ() : 0.0f;
                        int size = arrayList.size();
                        while (size > 0) {
                            int i = size - 1;
                            if ((Build.VERSION.SDK_INT >= 21 ? ((View) arrayList.get(i)).getZ() : 0.0f) <= z3) {
                                break;
                            }
                            size = i;
                        }
                        arrayList.add(size, rootView);
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((na0) aVar).c((View) it.next(), this.a, jSONObject);
        }
    }

    @Override // defpackage.da0
    public JSONObject b(View view) {
        return ha0.b(0, 0, 0, 0);
    }
}
