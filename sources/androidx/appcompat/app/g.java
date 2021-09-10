package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class g extends o implements DialogInterface {
    final AlertController d = new AlertController(getContext(), this, getWindow());

    protected g(Context context, int i) {
        super(context, d(context, i));
    }

    static int d(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.ae, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView c() {
        return this.d.g;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.o
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d.c();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.d.A;
        if (nestedScrollView != null && nestedScrollView.j(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.d.A;
        if (nestedScrollView != null && nestedScrollView.j(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.o, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.d.j(charSequence);
    }

    public static class a {
        private final AlertController.b a;
        private final int b;

        public a(Context context) {
            int d = g.d(context, 0);
            this.a = new AlertController.b(new ContextThemeWrapper(context, g.d(context, d)));
            this.b = d;
        }

        public g a() {
            int i;
            g gVar = new g(this.a.a, this.b);
            AlertController.b bVar = this.a;
            AlertController alertController = gVar.d;
            View view = bVar.e;
            if (view != null) {
                alertController.g(view);
            } else {
                CharSequence charSequence = bVar.d;
                if (charSequence != null) {
                    alertController.j(charSequence);
                }
                Drawable drawable = bVar.c;
                if (drawable != null) {
                    alertController.h(drawable);
                }
            }
            CharSequence charSequence2 = bVar.f;
            if (charSequence2 != null) {
                alertController.i(charSequence2);
            }
            CharSequence charSequence3 = bVar.g;
            if (charSequence3 != null) {
                alertController.f(-1, charSequence3, bVar.h, null, null);
            }
            CharSequence charSequence4 = bVar.i;
            if (charSequence4 != null) {
                alertController.f(-2, charSequence4, bVar.j, null, null);
            }
            if (bVar.m != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) bVar.b.inflate(alertController.L, (ViewGroup) null);
                if (bVar.p) {
                    i = alertController.N;
                } else {
                    i = alertController.O;
                }
                ListAdapter listAdapter = bVar.m;
                if (listAdapter == null) {
                    listAdapter = new AlertController.d(bVar.a, i, 16908308, null);
                }
                alertController.H = listAdapter;
                alertController.I = bVar.q;
                if (bVar.n != null) {
                    recycleListView.setOnItemClickListener(new f(bVar, alertController));
                }
                if (bVar.p) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.g = recycleListView;
            }
            View view2 = bVar.o;
            if (view2 != null) {
                alertController.k(view2);
            }
            gVar.setCancelable(this.a.k);
            if (this.a.k) {
                gVar.setCanceledOnTouchOutside(true);
            }
            Objects.requireNonNull(this.a);
            gVar.setOnCancelListener(null);
            Objects.requireNonNull(this.a);
            gVar.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = this.a.l;
            if (onKeyListener != null) {
                gVar.setOnKeyListener(onKeyListener);
            }
            return gVar;
        }

        public Context b() {
            return this.a.a;
        }

        public a c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.m = listAdapter;
            bVar.n = onClickListener;
            return this;
        }

        public a d(boolean z) {
            this.a.k = z;
            return this;
        }

        public a e(View view) {
            this.a.e = view;
            return this;
        }

        public a f(Drawable drawable) {
            this.a.c = drawable;
            return this;
        }

        public a g(int i) {
            AlertController.b bVar = this.a;
            bVar.f = bVar.a.getText(i);
            return this;
        }

        public a h(CharSequence charSequence) {
            this.a.f = charSequence;
            return this;
        }

        public a i(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.i = bVar.a.getText(i);
            this.a.j = onClickListener;
            return this;
        }

        public a j(DialogInterface.OnKeyListener onKeyListener) {
            this.a.l = onKeyListener;
            return this;
        }

        public a k(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.g = bVar.a.getText(i);
            this.a.h = onClickListener;
            return this;
        }

        public a l(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.g = charSequence;
            bVar.h = onClickListener;
            return this;
        }

        public a m(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.a;
            bVar.m = listAdapter;
            bVar.n = onClickListener;
            bVar.q = i;
            bVar.p = true;
            return this;
        }

        public a n(int i) {
            AlertController.b bVar = this.a;
            bVar.d = bVar.a.getText(i);
            return this;
        }

        public a o(CharSequence charSequence) {
            this.a.d = charSequence;
            return this;
        }

        public a p(View view) {
            this.a.o = view;
            return this;
        }

        public a(Context context, int i) {
            this.a = new AlertController.b(new ContextThemeWrapper(context, g.d(context, i)));
            this.b = i;
        }
    }
}
