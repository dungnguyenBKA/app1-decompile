package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.h;

public class b extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private Handler U;
    private Runnable V = new a();
    int W = 0;
    int X = 0;
    boolean Y = true;
    boolean Z = true;
    int a0 = -1;
    Dialog b0;
    boolean c0;
    boolean d0;
    boolean e0;

    class a implements Runnable {
        a() {
        }

        public void run() {
            b bVar = b.this;
            Dialog dialog = bVar.b0;
            if (dialog != null) {
                bVar.onDismiss(dialog);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void A0(Bundle bundle) {
        Bundle onSaveInstanceState;
        Dialog dialog = this.b0;
        if (!(dialog == null || (onSaveInstanceState = dialog.onSaveInstanceState()) == null)) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.W;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.X;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.Y;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.Z;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.a0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void B0() {
        super.B0();
        Dialog dialog = this.b0;
        if (dialog != null) {
            this.c0 = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void C0() {
        super.C0();
        Dialog dialog = this.b0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void d0(Bundle bundle) {
        Bundle bundle2;
        super.d0(bundle);
        if (this.Z) {
            View view = this.E;
            if (view != null) {
                if (view.getParent() == null) {
                    this.b0.setContentView(view);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            FragmentActivity x = x();
            if (x != null) {
                this.b0.setOwnerActivity(x);
            }
            this.b0.setCancelable(this.Y);
            this.b0.setOnCancelListener(this);
            this.b0.setOnDismissListener(this);
            if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
                this.b0.onRestoreInstanceState(bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void g0(Context context) {
        super.g0(context);
        if (!this.e0) {
            this.d0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void j0(Bundle bundle) {
        super.j0(bundle);
        this.U = new Handler();
        this.Z = this.w == 0;
        if (bundle != null) {
            this.W = bundle.getInt("android:style", 0);
            this.X = bundle.getInt("android:theme", 0);
            this.Y = bundle.getBoolean("android:cancelable", true);
            this.Z = bundle.getBoolean("android:showsDialog", this.Z);
            this.a0 = bundle.getInt("android:backStackId", -1);
        }
    }

    public void l1() {
        n1(false, false);
    }

    public void m1() {
        n1(true, false);
    }

    /* access modifiers changed from: package-private */
    public void n1(boolean z, boolean z2) {
        if (!this.d0) {
            this.d0 = true;
            this.e0 = false;
            Dialog dialog = this.b0;
            if (dialog != null) {
                dialog.setOnDismissListener(null);
                this.b0.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.U.getLooper()) {
                        onDismiss(this.b0);
                    } else {
                        this.U.post(this.V);
                    }
                }
            }
            this.c0 = true;
            if (this.a0 >= 0) {
                g X0 = X0();
                int i = this.a0;
                h hVar = (h) X0;
                if (i >= 0) {
                    hVar.Z(new h.i(null, i, 1), false);
                    this.a0 = -1;
                    return;
                }
                throw new IllegalArgumentException(ic.f("Bad id: ", i));
            }
            a aVar = new a((h) X0());
            aVar.j(this);
            if (z) {
                aVar.g();
            } else {
                aVar.f();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void o0() {
        super.o0();
        Dialog dialog = this.b0;
        if (dialog != null) {
            this.c0 = true;
            dialog.setOnDismissListener(null);
            this.b0.dismiss();
            if (!this.d0) {
                onDismiss(this.b0);
            }
            this.b0 = null;
        }
    }

    public Dialog o1() {
        return this.b0;
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.c0) {
            n1(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void p0() {
        super.p0();
        if (!this.e0 && !this.d0) {
            this.d0 = true;
        }
    }

    public Dialog p1(Bundle bundle) {
        return new Dialog(W0(), this.X);
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater q0(Bundle bundle) {
        if (!this.Z) {
            return I();
        }
        Dialog p1 = p1(bundle);
        this.b0 = p1;
        if (p1 == null) {
            return (LayoutInflater) this.s.d().getSystemService("layout_inflater");
        }
        int i = this.W;
        if (!(i == 1 || i == 2)) {
            if (i == 3) {
                p1.getWindow().addFlags(24);
            }
            return (LayoutInflater) this.b0.getContext().getSystemService("layout_inflater");
        }
        p1.requestWindowFeature(1);
        return (LayoutInflater) this.b0.getContext().getSystemService("layout_inflater");
    }

    public void q1(boolean z) {
        this.Y = z;
        Dialog dialog = this.b0;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void r1(boolean z) {
        this.Z = z;
    }

    public void s1(int i, int i2) {
        this.W = i;
        if (i == 2 || i == 3) {
            this.X = 16973913;
        }
        if (i2 != 0) {
            this.X = i2;
        }
    }

    public void t1(g gVar, String str) {
        this.d0 = false;
        this.e0 = true;
        m a2 = gVar.a();
        a2.h(0, this, str, 1);
        a2.f();
    }
}
