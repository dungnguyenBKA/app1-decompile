package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.g;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.m;
import photoeditor.cutout.backgrounderaser.R;

class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {
    private g b;
    private g c;
    e d;

    public h(g gVar) {
        this.b = gVar;
    }

    public void a(IBinder iBinder) {
        g gVar = this.b;
        g.a aVar = new g.a(gVar.n());
        e eVar = new e(aVar.b(), R.layout.q);
        this.d = eVar;
        eVar.g(this);
        this.b.b(this.d);
        aVar.c(this.d.a(), this);
        View view = gVar.o;
        if (view != null) {
            aVar.e(view);
        } else {
            aVar.f(gVar.n);
            aVar.o(gVar.m);
        }
        aVar.j(this);
        g a = aVar.a();
        this.c = a;
        a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        this.c.show();
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void b(g gVar, boolean z) {
        g gVar2;
        if ((z || gVar == this.b) && (gVar2 = this.c) != null) {
            gVar2.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean c(g gVar) {
        return false;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.y(((e.a) this.d.a()).getItem(i), 0);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.d.b(this.b, true);
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.c.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.b.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.b.performShortcut(i, keyEvent, 0);
    }
}
