package defpackage;

import android.view.View;

/* renamed from: r6  reason: default package */
public class r6 {
    private final View a;

    public r6(View view) {
        this.a = view;
    }

    public void a(boolean z) {
        if (!z && this.a.getVisibility() == 4) {
            this.a.setVisibility(8);
        }
    }
}
