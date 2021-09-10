package defpackage;

/* renamed from: ue  reason: default package */
public final class ue implements ne<int[]> {
    @Override // defpackage.ne
    public int a() {
        return 4;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.ne
    public int b(int[] iArr) {
        return iArr.length;
    }

    @Override // defpackage.ne
    public String getTag() {
        return "IntegerArrayPool";
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.ne
    public int[] newArray(int i) {
        return new int[i];
    }
}
