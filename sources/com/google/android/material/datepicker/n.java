package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import com.google.android.material.datepicker.e;
import java.util.Iterator;

class n implements AdapterView.OnItemClickListener {
    final /* synthetic */ MaterialCalendarGridView b;
    final /* synthetic */ o c;

    n(o oVar, MaterialCalendarGridView materialCalendarGridView) {
        this.c = oVar;
        this.b = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        m a = this.b.getAdapter();
        if (i >= a.a() && i <= a.c()) {
            e.f fVar = this.c.e;
            long longValue = this.b.getAdapter().getItem(i).longValue();
            e.d dVar = (e.d) fVar;
            if (e.this.X.a().L(longValue)) {
                e.this.W.b0(longValue);
                Iterator<p<S>> it = e.this.U.iterator();
                while (it.hasNext()) {
                    it.next().a((S) e.this.W.V());
                }
                e.this.c0.getAdapter().f();
                if (e.this.b0 != null) {
                    e.this.b0.getAdapter().f();
                }
            }
        }
    }
}
