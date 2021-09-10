package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* access modifiers changed from: package-private */
public class z {
    static int a(RecyclerView.y yVar, w wVar, View view, View view2, RecyclerView.o oVar, boolean z) {
        if (oVar.C() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(oVar.X(view) - oVar.X(view2)) + 1;
        }
        return Math.min(wVar.l(), wVar.b(view2) - wVar.e(view));
    }

    static int b(RecyclerView.y yVar, w wVar, View view, View view2, RecyclerView.o oVar, boolean z, boolean z2) {
        int i;
        if (oVar.C() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(oVar.X(view), oVar.X(view2));
        int max = Math.max(oVar.X(view), oVar.X(view2));
        if (z2) {
            i = Math.max(0, (yVar.b() - max) - 1);
        } else {
            i = Math.max(0, min);
        }
        if (!z) {
            return i;
        }
        return Math.round((((float) i) * (((float) Math.abs(wVar.b(view2) - wVar.e(view))) / ((float) (Math.abs(oVar.X(view) - oVar.X(view2)) + 1)))) + ((float) (wVar.k() - wVar.e(view))));
    }

    static int c(RecyclerView.y yVar, w wVar, View view, View view2, RecyclerView.o oVar, boolean z) {
        if (oVar.C() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return yVar.b();
        }
        return (int) ((((float) (wVar.b(view2) - wVar.e(view))) / ((float) (Math.abs(oVar.X(view) - oVar.X(view2)) + 1))) * ((float) yVar.b()));
    }
}
