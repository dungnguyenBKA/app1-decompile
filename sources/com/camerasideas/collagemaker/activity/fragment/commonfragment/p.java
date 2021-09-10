package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.camerasideas.collagemaker.appdata.f;
import photoeditor.cutout.backgrounderaser.R;

public class p extends sm {
    private final View.OnClickListener i0 = new a();

    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            if (view.getId() == R.id.o4) {
                p.this.u1();
            } else if (view.getId() == R.id.pq) {
                p.this.u1();
                f.l(((sm) p.this).f0, true);
                ((sm) Fragment.Y(((sm) p.this).f0, k.class.getName(), null)).x1(p.this.x().getSupportFragmentManager());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        TextView textView = (TextView) view.findViewById(R.id.o4);
        TextView textView2 = (TextView) view.findViewById(R.id.pq);
        uq.x(textView, this.f0);
        uq.x(textView2, this.f0);
        textView.setOnClickListener(this.i0);
        textView2.setOnClickListener(this.i0);
        TextView textView3 = (TextView) view.findViewById(R.id.h4);
        Drawable drawable = O().getDrawable(R.drawable.ka);
        drawable.setBounds(0, 0, c2.b(C(), 25.0f), c2.b(C(), 25.0f));
        ImageSpan imageSpan = new ImageSpan(drawable);
        SpannableString spannableString = new SpannableString("face");
        spannableString.setSpan(imageSpan, 0, 4, 33);
        textView3.append(" ");
        textView3.append(spannableString);
    }

    @Override // defpackage.sm
    public String v1() {
        return "RateFeedBackFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.bl;
    }
}
