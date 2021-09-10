package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import com.vungle.warren.error.VungleException;

public class j {

    /* access modifiers changed from: package-private */
    public static class a implements y2 {
        final /* synthetic */ b a;
        final /* synthetic */ c b;

        a(b bVar, c cVar) {
            this.a = bVar;
            this.b = cVar;
        }

        @Override // defpackage.y2
        public l3 a(View view, l3 l3Var) {
            return this.a.a(view, l3Var, new c(this.b));
        }
    }

    public interface b {
        l3 a(View view, l3 l3Var, c cVar);
    }

    public static void a(View view, b bVar) {
        int i = c3.g;
        c3.x(view, new a(bVar, new c(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom())));
        if (!view.isAttachedToWindow()) {
            view.addOnAttachStateChangeListener(new k());
        } else if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else {
            view.requestFitSystemWindows();
        }
    }

    public static float b(Context context, int i) {
        return TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    public static float c(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += c3.i((View) parent);
        }
        return f;
    }

    public static PorterDuff.Mode d(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return PorterDuff.Mode.MULTIPLY;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return PorterDuff.Mode.SCREEN;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static class c {
        public int a;
        public int b;
        public int c;
        public int d;

        public c(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        public c(c cVar) {
            this.a = cVar.a;
            this.b = cVar.b;
            this.c = cVar.c;
            this.d = cVar.d;
        }
    }
}
