package defpackage;

import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import defpackage.c3;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: q2  reason: default package */
public class q2 {
    private static boolean a = false;
    private static Method b = null;
    private static boolean c = false;
    private static Field d;

    /* renamed from: q2$a */
    public interface a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        int i = c3.g;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        int i2 = c3.e.e;
        c3.e eVar = (c3.e) view.getTag(R.id.rj);
        if (eVar == null) {
            eVar = new c3.e();
            view.setTag(R.id.rj, eVar);
        }
        return eVar.d(keyEvent);
    }

    /* JADX WARNING: Removed duplicated region for block: B:53:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(defpackage.q2.a r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
        // Method dump skipped, instructions count: 227
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q2.b(q2$a, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
