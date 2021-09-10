package com.camerasideas.collagemaker.activity.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.q;
import photoeditor.cutout.backgrounderaser.R;

public class FragmentLanguageDialog extends androidx.fragment.app.b {
    private RecyclerView f0;
    private c g0;

    public static class CenterLayoutManager extends LinearLayoutManager {

        private static class a extends q {
            a(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.q
            public int m(int i, int i2, int i3, int i4, int i5) {
                return (((i4 - i3) / 2) + i3) - (((i2 - i) / 2) + i);
            }
        }

        public CenterLayoutManager(Context context, int i, boolean z) {
            super(i, z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
        public void i1(RecyclerView recyclerView, RecyclerView.y yVar, int i) {
            try {
                a aVar = new a(recyclerView.getContext());
                aVar.j(i);
                j1(aVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public CenterLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
            super(context, attributeSet, i, i2);
        }
    }

    class a extends RecyclerView.b0 {
        RadioButton a;
        TextView b;

        public a(FragmentLanguageDialog fragmentLanguageDialog, View view) {
            super(view);
            this.a = (RadioButton) view.findViewById(R.id.nx);
            this.b = (TextView) view.findViewById(R.id.t1);
        }
    }

    class b extends RecyclerView.g<a> {
        private Context c;

        public b(Context context) {
            this.c = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int b() {
            return xq.f().length;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0, int] */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void q(a aVar, int i) {
            a aVar2 = aVar;
            aVar2.a.setChecked(xq.d(this.c) == i);
            aVar2.b.setText(xq.b(i));
            if (FragmentLanguageDialog.this.g0 != null) {
                aVar2.itemView.setOnClickListener(new a(this, i));
            }
        }

        /* Return type fixed from 'androidx.recyclerview.widget.RecyclerView$b0' to match base method */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        public a s(ViewGroup viewGroup, int i) {
            return new a(FragmentLanguageDialog.this, LayoutInflater.from(this.c).inflate(R.layout.c9, viewGroup, false));
        }
    }

    public interface c {
    }

    @Override // androidx.fragment.app.b
    public Dialog p1(Bundle bundle) {
        View inflate = x().getLayoutInflater().inflate(R.layout.b4, (ViewGroup) null);
        Dialog dialog = new Dialog(x());
        dialog.requestWindowFeature(1);
        dialog.setContentView(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.t2);
        this.f0 = (RecyclerView) inflate.findViewById(R.id.o0);
        CenterLayoutManager centerLayoutManager = new CenterLayoutManager(inflate.getContext(), 1, false);
        this.f0.setLayoutManager(centerLayoutManager);
        this.f0.setAdapter(new b(C()));
        centerLayoutManager.Y0(xq.d(C()));
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        window.setBackgroundDrawableResource(R.color.hl);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        attributes.dimAmount = 0.8f;
        attributes.width = (int) (((float) androidx.core.app.b.V(C())) * 0.8f);
        attributes.height = (int) (((float) androidx.core.app.b.U(C())) * 0.87f);
        window.setAttributes(attributes);
        return dialog;
    }

    public void v1(c cVar) {
        this.g0 = cVar;
    }
}
