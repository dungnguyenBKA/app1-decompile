package defpackage;

import android.view.View;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.Objects;

/* renamed from: qr  reason: default package */
/* compiled from: java-style lambda group */
public final class qr implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public qr(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    public final void onClick(View view) {
        int i = this.b;
        if (i == 0) {
            int adapterPosition = ((BaseViewHolder) this.d).getAdapterPosition();
            if (adapterPosition != -1) {
                Objects.requireNonNull((sr) this.c);
                sr srVar = (sr) this.c;
                gg0.b(view, "v");
                srVar.I(view, adapterPosition + 0);
            }
        } else if (i != 1) {
            throw null;
        } else if (((BaseViewHolder) this.d).getAdapterPosition() != -1) {
            Objects.requireNonNull((sr) this.c);
            gg0.b(view, "v");
            Objects.requireNonNull((sr) this.c);
            gg0.f(view, "v");
        }
    }
}
