package com.camerasideas.baseutils;

import android.content.Context;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.activity.d;
import java.util.Objects;

public class a {
    private static a b;
    private AbstractC0032a a;

    /* renamed from: com.camerasideas.baseutils.a$a  reason: collision with other inner class name */
    public interface AbstractC0032a {
    }

    private a() {
    }

    public static a b() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    public Context a() {
        AbstractC0032a aVar = this.a;
        if (aVar == null) {
            return null;
        }
        Objects.requireNonNull((d) aVar);
        return CollageMakerApplication.b();
    }

    public void c(AbstractC0032a aVar) {
        this.a = aVar;
    }
}
