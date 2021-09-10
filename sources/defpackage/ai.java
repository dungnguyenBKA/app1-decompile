package defpackage;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.Objects;

/* renamed from: ai  reason: default package */
public abstract class ai<T extends Drawable> implements he<T>, de {
    protected final T b;

    public ai(T t) {
        Objects.requireNonNull(t, "Argument must not be null");
        this.b = t;
    }

    @Override // defpackage.he
    public Object get() {
        Drawable.ConstantState constantState = this.b.getConstantState();
        if (constantState == null) {
            return this.b;
        }
        return constantState.newDrawable();
    }

    @Override // defpackage.de
    public void initialize() {
        T t = this.b;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof ji) {
            ((ji) t).c().prepareToDraw();
        }
    }
}
