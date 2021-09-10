package dev.drojian.rate;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.StarCheckView;
import java.util.Locale;
import photoeditor.cutout.backgrounderaser.R;

public abstract class a {
    protected StarCheckView a;
    protected StarCheckView b;
    protected StarCheckView c;
    protected StarCheckView d;
    protected StarCheckView e;
    protected TextView f;
    protected TextView g;
    protected TextView h;
    protected ImageView i;
    protected TextView j;
    protected LinearLayout k;
    private Dialog l;
    private ed0 m;
    private int n = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: dev.drojian.rate.a$a  reason: collision with other inner class name */
    public class DialogInterface$OnCancelListenerC0097a implements DialogInterface.OnCancelListener {
        final /* synthetic */ dd0 b;

        DialogInterface$OnCancelListenerC0097a(a aVar, dd0 dd0) {
            this.b = dd0;
        }

        public void onCancel(DialogInterface dialogInterface) {
            dd0 dd0 = this.b;
            if (dd0 != null) {
                dd0.a();
                this.b.e("AppRate_new", "Show", "cancel");
            }
            dialogInterface.dismiss();
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements View.OnClickListener {
        final /* synthetic */ Context b;
        final /* synthetic */ bd0 c;
        final /* synthetic */ dd0 d;

        b(Context context, bd0 bd0, dd0 dd0) {
            this.b = context;
            this.c = bd0;
            this.d = dd0;
        }

        public void onClick(View view) {
            a.this.l.dismiss();
            if (a.this.n > 4) {
                c.b(this.b, this.c);
                dd0 dd0 = this.d;
                if (dd0 != null) {
                    dd0.b();
                    this.d.e("AppRate_new", "Like", "Review");
                }
                if (a.this.l != null && a.this.l.isShowing()) {
                    a.this.l.dismiss();
                    return;
                }
                return;
            }
            dd0 dd02 = this.d;
            if (dd02 != null) {
                dd02.d();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements DialogInterface.OnDismissListener {
        final /* synthetic */ dd0 b;

        c(a aVar, dd0 dd0) {
            this.b = dd0;
        }

        public void onDismiss(DialogInterface dialogInterface) {
            dd0 dd0 = this.b;
            if (dd0 != null) {
                dd0.c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class d extends AnimatorListenerAdapter {
        final /* synthetic */ int a;

        d(int i) {
            this.a = i;
        }

        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            try {
                a.this.i.setImageResource(this.a);
                a.this.i.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(120);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected class e implements View.OnClickListener {
        dd0 b;
        bd0 c;

        public e(bd0 bd0, dd0 dd0) {
            this.c = bd0;
            this.b = dd0;
        }

        public void onClick(View view) {
            int id = view.getId();
            bd0 bd0 = this.c;
            boolean z = false;
            if (!bd0.a || bd0.b) {
                if (id == R.id.nl) {
                    if (a.this.n == 1) {
                        a.this.n = 0;
                        a.this.a.g(false, false);
                    } else {
                        boolean z2 = a.this.n == 0;
                        a.this.n = 1;
                        a.this.a.g(true, false);
                        a.this.b.g(false, false);
                        a.this.c.g(false, false);
                        a.this.d.g(false, false);
                        a.this.e.g(false, false);
                        z = z2;
                    }
                    a.d(a.this, view.getContext(), this.c, z, this.b);
                } else if (id == R.id.nm) {
                    if (a.this.n == 2) {
                        a.this.n = 1;
                        a.this.b.g(false, false);
                    } else {
                        boolean z3 = a.this.n == 0;
                        a.this.n = 2;
                        a.this.a.g(true, false);
                        a.this.b.g(true, false);
                        a.this.c.g(false, false);
                        a.this.d.g(false, false);
                        a.this.e.g(false, false);
                        z = z3;
                    }
                    a.d(a.this, view.getContext(), this.c, z, this.b);
                } else if (id == R.id.nn) {
                    if (a.this.n == 3) {
                        a.this.n = 2;
                        a.this.c.g(false, false);
                    } else {
                        boolean z4 = a.this.n == 0;
                        a.this.n = 3;
                        a.this.a.g(true, false);
                        a.this.b.g(true, false);
                        a.this.c.g(true, false);
                        a.this.d.g(false, false);
                        a.this.e.g(false, false);
                        z = z4;
                    }
                    a.d(a.this, view.getContext(), this.c, z, this.b);
                } else if (id == R.id.no) {
                    if (a.this.n == 4) {
                        a.this.n = 3;
                        a.this.d.g(false, false);
                    } else {
                        boolean z5 = a.this.n == 0;
                        a.this.n = 4;
                        a.this.a.g(true, false);
                        a.this.b.g(true, false);
                        a.this.c.g(true, false);
                        a.this.d.g(true, false);
                        a.this.e.g(false, false);
                        z = z5;
                    }
                    a.d(a.this, view.getContext(), this.c, z, this.b);
                } else if (id == R.id.np) {
                    if (a.this.n == 5) {
                        a.this.n = 4;
                        a.this.e.g(false, false);
                    } else {
                        boolean z6 = a.this.n == 0;
                        a.this.n = 5;
                        a.this.a.g(true, false);
                        a.this.b.g(true, false);
                        a.this.c.g(true, false);
                        a.this.d.g(true, false);
                        a.this.e.g(true, false);
                        z = z6;
                    }
                    a.d(a.this, view.getContext(), this.c, z, this.b);
                }
            } else if (id == R.id.nl) {
                if (a.this.n == 5) {
                    a.this.n = 4;
                    a.this.a.g(false, false);
                } else {
                    boolean z7 = a.this.n == 0;
                    a.this.n = 5;
                    a.this.a.g(true, false);
                    a.this.b.g(true, false);
                    a.this.c.g(true, false);
                    a.this.d.g(true, false);
                    a.this.e.g(true, false);
                    z = z7;
                }
                a.d(a.this, view.getContext(), this.c, z, this.b);
            } else if (id == R.id.nm) {
                if (a.this.n == 4) {
                    a.this.n = 3;
                    a.this.b.g(false, false);
                } else {
                    boolean z8 = a.this.n == 0;
                    a.this.n = 4;
                    a.this.a.g(false, false);
                    a.this.b.g(true, false);
                    a.this.c.g(true, false);
                    a.this.d.g(true, false);
                    a.this.e.g(true, false);
                    z = z8;
                }
                a.d(a.this, view.getContext(), this.c, z, this.b);
            } else if (id == R.id.nn) {
                if (a.this.n == 3) {
                    a.this.n = 2;
                    a.this.c.g(false, false);
                } else {
                    boolean z9 = a.this.n == 0;
                    a.this.n = 3;
                    a.this.a.g(false, false);
                    a.this.b.g(false, false);
                    a.this.c.g(true, false);
                    a.this.d.g(true, false);
                    a.this.e.g(true, false);
                    z = z9;
                }
                a.d(a.this, view.getContext(), this.c, z, this.b);
            } else if (id == R.id.no) {
                if (a.this.n == 2) {
                    a.this.n = 1;
                    a.this.d.g(false, false);
                } else {
                    boolean z10 = a.this.n == 0;
                    a.this.n = 2;
                    a.this.a.g(false, false);
                    a.this.b.g(false, false);
                    a.this.c.g(false, false);
                    a.this.d.g(true, false);
                    a.this.e.g(true, false);
                    z = z10;
                }
                a.d(a.this, view.getContext(), this.c, z, this.b);
            } else if (id == R.id.np) {
                if (a.this.n == 1) {
                    a.this.n = 0;
                    a.this.e.g(false, false);
                } else {
                    boolean z11 = a.this.n == 0;
                    a.this.n = 1;
                    a.this.a.g(false, false);
                    a.this.b.g(false, false);
                    a.this.c.g(false, false);
                    a.this.d.g(false, false);
                    a.this.e.g(true, false);
                    z = z11;
                }
                a.d(a.this, view.getContext(), this.c, z, this.b);
            }
        }
    }

    static void d(a aVar, Context context, bd0 bd0, boolean z, dd0 dd0) {
        int i2 = aVar.n;
        int i3 = R.drawable.jd;
        if (i2 != 0) {
            int i4 = R.string.d0;
            int i5 = R.string.d3;
            int i6 = R.string.cp;
            if (i2 == 1) {
                aVar.m.h(0);
                i3 = R.drawable.je;
            } else if (i2 == 2) {
                aVar.m.h(1);
                i3 = R.drawable.jf;
            } else if (i2 != 3) {
                if (i2 == 4) {
                    aVar.m.h(3);
                    i3 = R.drawable.jh;
                } else if (i2 == 5) {
                    aVar.m.h(4);
                    i3 = R.drawable.ji;
                    i6 = R.string.co;
                }
                i4 = R.string.d6;
                i5 = R.string.d1;
            } else {
                aVar.m.h(2);
                i3 = R.drawable.jg;
            }
            aVar.f(i3);
            aVar.f.setVisibility(4);
            aVar.g.setVisibility(0);
            aVar.h.setVisibility(0);
            aVar.g.setText(i5);
            aVar.h.setText(i4);
            aVar.j.setText(i6);
            aVar.j.setEnabled(true);
            aVar.j.setAlpha(1.0f);
            aVar.k.setAlpha(1.0f);
            if (bd0.e && aVar.n == 5) {
                c.b(context, bd0);
                if (dd0 != null) {
                    dd0.b();
                    dd0.e("AppRate_new", "Like", "Review");
                }
                Dialog dialog = aVar.l;
                if (dialog != null && dialog.isShowing()) {
                    aVar.l.dismiss();
                    return;
                }
                return;
            }
            return;
        }
        aVar.f(R.drawable.jd);
        aVar.f.setVisibility(0);
        aVar.g.setVisibility(4);
        aVar.h.setVisibility(4);
        aVar.j.setEnabled(false);
        aVar.j.setAlpha(0.5f);
        aVar.k.setAlpha(0.5f);
    }

    private void f(int i2) {
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.animate().scaleX(0.2f).scaleY(0.2f).alpha(0.2f).setDuration(120).setListener(new d(i2));
        }
    }

    private boolean g(Locale locale) {
        if (locale == null) {
            return false;
        }
        try {
            String country = locale.getCountry();
            String language = locale.getLanguage();
            if (!TextUtils.isEmpty(country) && country.equalsIgnoreCase("ID")) {
                return true;
            }
            if (TextUtils.isEmpty(language) || !language.toLowerCase().startsWith("in")) {
                return false;
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public abstract Dialog e(Context context, bd0 bd0, ed0 ed0, dd0 dd0);

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (g(r0.locale) != false) goto L_0x0023;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void h(android.content.Context r4, defpackage.bd0 r5, defpackage.dd0 r6) {
        /*
        // Method dump skipped, instructions count: 168
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.drojian.rate.a.h(android.content.Context, bd0, dd0):void");
    }
}
