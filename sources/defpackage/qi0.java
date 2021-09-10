package defpackage;

/* renamed from: qi0  reason: default package */
public enum qi0 {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);
    
    public final int b;

    private qi0(int i) {
        this.b = i;
    }

    public static qi0 a(int i) {
        qi0[] values = values();
        for (int i2 = 0; i2 < 11; i2++) {
            qi0 qi0 = values[i2];
            if (qi0.b == i) {
                return qi0;
            }
        }
        return null;
    }
}
