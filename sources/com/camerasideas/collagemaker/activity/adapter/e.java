package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class e extends RecyclerView.g<RecyclerView.b0> {
    private int c;
    private List<nn> d;

    public class a extends RecyclerView.b0 {
        private TextView a;

        public a(e eVar, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.s_);
        }
    }

    public e(Context context, List<nn> list) {
        this.d = list;
    }

    public int A(String str) {
        for (int i = 0; i < this.d.size(); i++) {
            nn nnVar = this.d.get(i);
            if (!TextUtils.isEmpty(str) && str.equals(nnVar.c())) {
                return i;
            }
        }
        return 0;
    }

    public void B(List<nn> list) {
        this.d = list;
        f();
    }

    public void C(int i) {
        this.c = i;
        f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        List<nn> list = this.d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        a aVar = (a) b0Var;
        aVar.a.setText(this.d.get(i).c());
        aVar.a.setSelected(this.c == i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        return new a(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.ca, viewGroup, false));
    }

    public List<nn> z() {
        return this.d;
    }
}
