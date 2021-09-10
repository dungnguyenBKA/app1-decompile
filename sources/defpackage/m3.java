package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: m3  reason: default package */
public final class m3 extends ClickableSpan {
    private final int b;
    private final n3 c;
    private final int d;

    public m3(int i, n3 n3Var, int i2) {
        this.b = i;
        this.c = n3Var;
        this.d = i2;
    }

    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.b);
        this.c.H(this.d, bundle);
    }
}
