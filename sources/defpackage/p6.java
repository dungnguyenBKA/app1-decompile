package defpackage;

import android.view.View;

/* renamed from: p6  reason: default package */
public abstract class p6 implements View.OnClickListener {
    static boolean b = true;

    public abstract void a(View view);

    public final void onClick(View view) {
        if (b) {
            b = false;
            view.post(o6.b);
            a(view);
        }
    }
}
