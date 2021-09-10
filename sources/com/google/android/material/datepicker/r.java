package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.q;

/* access modifiers changed from: package-private */
public class r extends LinearLayoutManager {

    class a extends q {
        a(r rVar, Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.q
        public float n(DisplayMetrics displayMetrics) {
            return 100.0f / ((float) displayMetrics.densityDpi);
        }
    }

    r(Context context, int i, boolean z) {
        super(i, z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o, androidx.recyclerview.widget.LinearLayoutManager
    public void i1(RecyclerView recyclerView, RecyclerView.y yVar, int i) {
        a aVar = new a(this, recyclerView.getContext());
        aVar.j(i);
        j1(aVar);
    }
}
