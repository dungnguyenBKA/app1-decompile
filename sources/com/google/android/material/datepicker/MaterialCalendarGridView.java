package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.Calendar;
import photoeditor.cutout.backgrounderaser.R;

final class MaterialCalendarGridView extends GridView {
    private final Calendar b;

    class a extends n2 {
        a(MaterialCalendarGridView materialCalendarGridView) {
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.T(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: a */
    public m getAdapter() {
        return (m) super.getAdapter();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    /* access modifiers changed from: protected */
    public final void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        m a2 = getAdapter();
        DateSelector<?> dateSelector = a2.b;
        b bVar = a2.c;
        Long b2 = a2.getItem(a2.a());
        Long b3 = a2.getItem(a2.c());
        for (j2<Long, Long> j2Var : dateSelector.j()) {
            F f = j2Var.a;
            if (f != null) {
                if (j2Var.b == null) {
                    continue;
                } else {
                    long longValue = f.longValue();
                    long longValue2 = j2Var.b.longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    int i5 = 1;
                    if (!(b2 == null || b3 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > b3.longValue() || valueOf2.longValue() < b2.longValue())) {
                        if (longValue < b2.longValue()) {
                            i2 = a2.a();
                            if (i2 % a2.a.f == 0) {
                                i = 0;
                            } else {
                                i = materialCalendarGridView.getChildAt(i2 - 1).getRight();
                            }
                        } else {
                            materialCalendarGridView.b.setTimeInMillis(longValue);
                            i2 = (materialCalendarGridView.b.get(5) - 1) + a2.a();
                            View childAt = materialCalendarGridView.getChildAt(i2);
                            i = (childAt.getWidth() / 2) + childAt.getLeft();
                        }
                        if (longValue2 > b3.longValue()) {
                            i4 = a2.c();
                            if ((i4 + 1) % a2.a.f == 0) {
                                i3 = getWidth();
                            } else {
                                i3 = materialCalendarGridView.getChildAt(i4).getRight();
                            }
                        } else {
                            materialCalendarGridView.b.setTimeInMillis(longValue2);
                            i4 = (materialCalendarGridView.b.get(5) - 1) + a2.a();
                            View childAt2 = materialCalendarGridView.getChildAt(i4);
                            i3 = (childAt2.getWidth() / 2) + childAt2.getLeft();
                        }
                        int itemId = (int) a2.getItemId(i2);
                        int itemId2 = (int) a2.getItemId(i4);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - i5;
                            View childAt3 = materialCalendarGridView.getChildAt(numColumns);
                            canvas.drawRect((float) (numColumns > i2 ? 0 : i), (float) (childAt3.getTop() + bVar.a.c()), (float) (i4 > numColumns2 ? getWidth() : i3), (float) (childAt3.getBottom() - bVar.a.b()), bVar.h);
                            itemId++;
                            i5 = 1;
                            materialCalendarGridView = this;
                        }
                    } else {
                        return;
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    /* access modifiers changed from: protected */
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
        } else if (i == 33) {
            setSelection(getAdapter().c());
        } else if (i == 130) {
            setSelection(getAdapter().a());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().a()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().a());
        return true;
    }

    public void setSelection(int i) {
        if (i < getAdapter().a()) {
            super.setSelection(getAdapter().a());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = c.e();
        if (l.u1(getContext())) {
            setNextFocusLeftId(R.id.ex);
            setNextFocusRightId(R.id.fl);
        }
        c3.u(this, new a(this));
    }

    @Override // android.widget.GridView, android.widget.AbsListView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof m) {
            super.setAdapter(listAdapter);
        } else {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), m.class.getCanonicalName()));
        }
    }
}
