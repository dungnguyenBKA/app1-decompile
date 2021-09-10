package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: mc0  reason: default package */
public class mc0 {
    private ArrayList<Bitmap> a = new ArrayList<>();
    private Context b;

    public mc0(Context context, int[] iArr) {
        this.b = context;
        if (iArr.length != 0) {
            a();
            for (int i : iArr) {
                try {
                    this.a.add(BitmapFactory.decodeResource(this.b.getResources(), i));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return;
        }
        throw new IllegalStateException("You must declare the resources");
    }

    public void a() {
        Iterator<Bitmap> it = this.a.iterator();
        while (it.hasNext()) {
            Bitmap next = it.next();
            if (next != null && !next.isRecycled()) {
                next.recycle();
            }
        }
        this.a.clear();
    }

    public Bitmap b(int i) {
        return this.a.get(i);
    }

    public int c() {
        return this.a.size();
    }
}
