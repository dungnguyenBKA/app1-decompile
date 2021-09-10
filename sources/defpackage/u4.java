package defpackage;

import android.animation.TypeEvaluator;
import defpackage.l1;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: u4  reason: default package */
public class u4 implements TypeEvaluator<l1.a[]> {
    private l1.a[] a;

    u4() {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    @Override // android.animation.TypeEvaluator
    public l1.a[] evaluate(float f, l1.a[] aVarArr, l1.a[] aVarArr2) {
        l1.a[] aVarArr3 = aVarArr;
        l1.a[] aVarArr4 = aVarArr2;
        if (l1.a(aVarArr3, aVarArr4)) {
            if (!l1.a(this.a, aVarArr3)) {
                this.a = l1.g(aVarArr3);
            }
            for (int i = 0; i < aVarArr3.length; i++) {
                l1.a aVar = this.a[i];
                l1.a aVar2 = aVarArr3[i];
                l1.a aVar3 = aVarArr4[i];
                Objects.requireNonNull(aVar);
                aVar.a = aVar2.a;
                int i2 = 0;
                while (true) {
                    float[] fArr = aVar2.b;
                    if (i2 >= fArr.length) {
                        break;
                    }
                    aVar.b[i2] = (aVar3.b[i2] * f) + ((1.0f - f) * fArr[i2]);
                    i2++;
                }
            }
            return this.a;
        }
        throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
    }
}
