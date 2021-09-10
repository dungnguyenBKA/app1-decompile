package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import java.lang.reflect.Method;

public class u extends ListPopupWindow implements t {
    private static Method F;
    private t E;

    public static class a extends p {
        final int o;
        final int p;
        private t q;
        private MenuItem r;

        public a(Context context, boolean z) {
            super(context, z);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.o = 21;
                this.p = 22;
                return;
            }
            this.o = 22;
            this.p = 21;
        }

        public void e(t tVar) {
            this.q = tVar;
        }

        @Override // androidx.appcompat.widget.p
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            f fVar;
            int pointToPosition;
            int i2;
            if (this.q != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    fVar = (f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    fVar = (f) adapter;
                }
                i iVar = null;
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < fVar.getCount()) {
                    iVar = fVar.getItem(i2);
                }
                MenuItem menuItem = this.r;
                if (menuItem != iVar) {
                    g b = fVar.b();
                    if (menuItem != null) {
                        this.q.c(b, menuItem);
                    }
                    this.r = iVar;
                    if (iVar != null) {
                        this.q.b(b, iVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.o) {
                if (listMenuItemView.isEnabled() && listMenuItemView.c().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            } else if (listMenuItemView == null || i != this.p) {
                return super.onKeyDown(i, keyEvent);
            } else {
                setSelection(-1);
                ((f) getAdapter()).b().e(false);
                return true;
            }
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                F = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public u(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, null, i, i2);
    }

    public void D(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.A.setEnterTransition(null);
        }
    }

    public void E(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.A.setExitTransition(null);
        }
    }

    public void F(t tVar) {
        this.E = tVar;
    }

    public void G(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = F;
            if (method != null) {
                try {
                    method.invoke(this.A, Boolean.valueOf(z));
                } catch (Exception unused) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.A.setTouchModal(z);
        }
    }

    @Override // androidx.appcompat.widget.t
    public void b(g gVar, MenuItem menuItem) {
        t tVar = this.E;
        if (tVar != null) {
            tVar.b(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.t
    public void c(g gVar, MenuItem menuItem) {
        t tVar = this.E;
        if (tVar != null) {
            tVar.c(gVar, menuItem);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.ListPopupWindow
    public p d(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.e(this);
        return aVar;
    }
}
