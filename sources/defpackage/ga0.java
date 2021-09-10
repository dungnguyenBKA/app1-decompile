package defpackage;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import defpackage.da0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* renamed from: ga0  reason: default package */
public class ga0 implements da0 {
    private final int[] a = new int[2];

    @Override // defpackage.da0
    public void a(View view, JSONObject jSONObject, da0.a aVar, boolean z) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            if (!z || Build.VERSION.SDK_INT < 21) {
                while (i < viewGroup.getChildCount()) {
                    ((na0) aVar).c(viewGroup.getChildAt(i), this, jSONObject);
                    i++;
                }
                return;
            }
            HashMap hashMap = new HashMap();
            while (i < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i);
                ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(Float.valueOf(childAt.getZ()), arrayList);
                }
                arrayList.add(childAt);
                i++;
            }
            ArrayList arrayList2 = new ArrayList(hashMap.keySet());
            Collections.sort(arrayList2);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) hashMap.get((Float) it.next())).iterator();
                while (it2.hasNext()) {
                    ((na0) aVar).c((View) it2.next(), this, jSONObject);
                }
            }
        }
    }

    @Override // defpackage.da0
    public JSONObject b(View view) {
        if (view == null) {
            return ha0.b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.a);
        int[] iArr = this.a;
        return ha0.b(iArr[0], iArr[1], width, height);
    }
}
