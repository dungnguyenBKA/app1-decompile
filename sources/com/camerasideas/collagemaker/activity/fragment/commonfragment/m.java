package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.camerasideas.collagemaker.appdata.f;
import photoeditor.cutout.backgrounderaser.R;

public class m extends sm {
    private View i0;

    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            m.this.u1();
            m.this.i0.setTag(0);
            int e = f.e(((sm) m.this).f0);
            if (e == 1 && f.f(((sm) m.this).f0) >= 3) {
                f.m(((sm) m.this).f0, -2);
            } else if (e == 2) {
                f.l(((sm) m.this).f0, true);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        public void onClick(View view) {
            m.this.u1();
            m.this.i0.setTag(1);
            c2.q(((sm) m.this).f0, m.this.x().getPackageName());
            f.l(((sm) m.this).f0, true);
        }
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        this.i0 = view;
        TextView textView = (TextView) view.findViewById(R.id.o4);
        TextView textView2 = (TextView) this.i0.findViewById(R.id.hx);
        uq.x(textView, this.f0);
        uq.x(textView2, this.f0);
        textView.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
    }

    @Override // androidx.fragment.app.b
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Integer num = (Integer) this.i0.getTag();
        if (num == null || num.intValue() == 0) {
            int e = f.e(this.f0);
            if (e == 1 && f.f(this.f0) >= 3) {
                f.m(this.f0, -2);
            } else if (e == 2) {
                f.l(this.f0, true);
            }
        }
    }

    @Override // defpackage.sm
    public String v1() {
        return "Give5RateFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.bh;
    }
}
