package androidx.media;

import android.util.SparseIntArray;
import androidx.versionedparcelable.c;

public class AudioAttributesCompat implements c {
    private static final SparseIntArray b;
    public static final /* synthetic */ int c = 0;
    a a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        b = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    AudioAttributesCompat() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        a aVar = this.a;
        if (aVar != null) {
            return aVar.equals(audioAttributesCompat.a);
        }
        if (audioAttributesCompat.a == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
