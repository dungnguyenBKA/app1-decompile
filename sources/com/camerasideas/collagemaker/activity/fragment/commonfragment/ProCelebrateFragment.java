package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.ParticlesView;
import androidx.core.app.b;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

public class ProCelebrateFragment extends h {
    private ParticlesView X;

    @Override // androidx.fragment.app.Fragment
    public void D0(View view, Bundle bundle) {
        ParticlesView particlesView = (ParticlesView) view.findViewById(R.id.gq);
        this.X = particlesView;
        ArrayList arrayList = new ArrayList();
        Paint paint = new Paint(1);
        Rect rect = new Rect(0, 0, b.z0(this.U), b.y0(this.U));
        pc0 pc0 = new pc0(this.U);
        nc0 nc0 = new nc0(new sc0(this.U, pc0), rect, paint);
        nc0.setRepeatCount(-1);
        nc0.setRepeatMode(1);
        arrayList.add(nc0);
        nc0 nc02 = new nc0(new rc0(this.U, pc0), rect, paint);
        nc02.setRepeatCount(-1);
        nc02.setRepeatMode(1);
        arrayList.add(nc02);
        particlesView.b(arrayList);
        this.X.d();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public String l1() {
        return "ProCelebrateFragment";
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public int m1() {
        return R.layout.bk;
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void o0() {
        super.o0();
        this.X.e();
        this.X.c();
    }
}
