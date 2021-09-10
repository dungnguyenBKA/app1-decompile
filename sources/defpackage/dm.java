package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: dm  reason: default package */
public class dm {
    private final RecyclerView a;
    private d b;
    private View.OnClickListener c = new a();
    private View.OnLongClickListener d = new b();
    private RecyclerView.p e = new c();

    /* renamed from: dm$a */
    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            if (dm.this.b != null) {
                RecyclerView.b0 childViewHolder = dm.this.a.getChildViewHolder(view);
                dm.this.b.l(dm.this.a, childViewHolder, childViewHolder.getAdapterPosition(), view);
            }
        }
    }

    /* renamed from: dm$b */
    class b implements View.OnLongClickListener {
        b() {
        }

        public boolean onLongClick(View view) {
            Objects.requireNonNull(dm.this);
            return false;
        }
    }

    /* renamed from: dm$c */
    class c implements RecyclerView.p {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void b(View view) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void d(View view) {
            if (dm.this.b != null) {
                view.setOnClickListener(dm.this.c);
            }
            Objects.requireNonNull(dm.this);
        }
    }

    /* renamed from: dm$d */
    public interface d {
        void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view);
    }

    private dm(RecyclerView recyclerView) {
        this.a = recyclerView;
        recyclerView.setTag(R.id.jc, this);
        recyclerView.addOnChildAttachStateChangeListener(this.e);
    }

    public static dm d(RecyclerView recyclerView) {
        dm dmVar = (dm) recyclerView.getTag(R.id.jc);
        return dmVar == null ? new dm(recyclerView) : dmVar;
    }

    public dm e(d dVar) {
        this.b = dVar;
        return this;
    }
}
