package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageTextFragment;

/* renamed from: lm  reason: default package */
public class lm {
    private ViewTreeObserver.OnGlobalLayoutListener a;
    int b = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: lm$a */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        private int b;
        private boolean c;
        private boolean d;
        final /* synthetic */ View e;
        final /* synthetic */ int f;
        final /* synthetic */ b g;

        a(View view, int i, b bVar) {
            this.e = view;
            this.f = i;
            this.g = bVar;
        }

        public void onGlobalLayout() {
            lm.this.a = this;
            Rect rect = new Rect();
            this.e.getWindowVisibleDisplayFrame(rect);
            int height = this.e.getRootView().getHeight();
            int i = rect.bottom;
            int i2 = height / 4;
            if (height - i < i2) {
                this.d = true;
                lm.this.b = height - i;
            } else if (height - i == 0) {
                lm.this.b = 0;
                this.d = false;
            }
            int i3 = height - (i - rect.top);
            if (this.b == 0 && i3 > i2) {
                if (this.d) {
                    this.b = i3 - lm.this.b;
                } else {
                    this.b = i3;
                }
            }
            if (this.d) {
                if (this.c) {
                    if (i3 <= this.f + lm.this.b) {
                        this.c = false;
                        ((ImageTextFragment) this.g).D1(this.b, false);
                    }
                } else if (i3 > this.f && i3 > i2) {
                    this.c = true;
                    ((ImageTextFragment) this.g).D1(this.b, true);
                }
            } else if (this.c) {
                if (i3 <= this.f) {
                    this.c = false;
                    ((ImageTextFragment) this.g).D1(this.b, false);
                }
            } else if (i3 > this.f) {
                this.c = true;
                ((ImageTextFragment) this.g).D1(this.b, true);
            }
        }
    }

    /* renamed from: lm$b */
    public interface b {
    }

    public static void d(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).showSoftInput(view, 0);
    }

    public void b(Activity activity, b bVar) {
        int i;
        em.h("SoftKeyboardUtils", "observeSoftKeyboard");
        View decorView = activity.getWindow().getDecorView();
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            i = activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new a(decorView, i, bVar));
    }

    public void c(Activity activity) {
        em.h("SoftKeyboardUtils", "removeGlobalOnLayoutListener");
        View decorView = activity.getWindow().getDecorView();
        if (this.a != null) {
            decorView.getViewTreeObserver().removeOnGlobalLayoutListener(this.a);
        }
    }
}
