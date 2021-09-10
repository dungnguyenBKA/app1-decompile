package androidx.work.impl;

import androidx.room.g;

/* access modifiers changed from: package-private */
public final class g extends g.b {
    g() {
    }

    @Override // androidx.room.g.b
    public void a(h4 h4Var) {
        h4Var.b();
        try {
            h4Var.execSQL(WorkDatabase.q());
            h4Var.A();
        } finally {
            h4Var.G();
        }
    }
}
