package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import cn.dreamtobe.kpswitch.a;
import com.vungle.warren.error.VungleException;

/* renamed from: t6  reason: default package */
public class t6 {
    private int a = -1;
    private final View b;
    private final int c;
    private final boolean d;
    private a e;

    public t6(View view) {
        this.b = view;
        this.c = x6.a(view.getContext());
        this.d = u6.e((Activity) view.getContext());
    }

    private a a(View view) {
        a aVar = this.e;
        if (aVar != null) {
            return aVar;
        }
        if (view instanceof a) {
            a aVar2 = (a) view;
            this.e = aVar2;
            return aVar2;
        } else if (!(view instanceof ViewGroup)) {
            return null;
        } else {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    return null;
                }
                a a2 = a(viewGroup.getChildAt(i));
                if (a2 != null) {
                    this.e = a2;
                    return a2;
                }
                i++;
            }
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public void b(int i, int i2) {
        if (this.d && this.b.getFitsSystemWindows()) {
            Rect rect = new Rect();
            this.b.getWindowVisibleDisplayFrame(rect);
            i2 = rect.bottom - rect.top;
        }
        if (i2 >= 0) {
            int i3 = this.a;
            if (i3 < 0) {
                this.a = i2;
                return;
            }
            int i4 = i3 - i2;
            if (i4 != 0) {
                if (Math.abs(i4) == this.c) {
                    Log.w("KPSRootLayoutHandler", String.format("offset just equal statusBar height %d", Integer.valueOf(i4)));
                    return;
                }
                this.a = i2;
                a a2 = a(this.b);
                if (a2 == null) {
                    Log.w("KPSRootLayoutHandler", "can't find the valid panel conflict layout, give up!");
                } else if (Math.abs(i4) < w6.d(this.b.getContext())) {
                    Log.w("KPSRootLayoutHandler", "system bottom-menu-bar(such as HuaWei Mate7) causes layout changed");
                } else if (i4 > 0) {
                    a2.c();
                } else if (a2.b() && a2.isVisible()) {
                    a2.e();
                }
            }
        }
    }
}
