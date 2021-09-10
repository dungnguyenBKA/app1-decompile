package androidx.media;

import com.vungle.warren.error.VungleException;
import java.util.Arrays;

class c implements a {
    int a = 0;
    int b = 0;
    int c = 0;
    int d = -1;

    c() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.b != cVar.b) {
            return false;
        }
        int i = this.c;
        int i2 = cVar.c;
        int i3 = cVar.d;
        int i4 = 4;
        if (i3 == -1) {
            int i5 = cVar.a;
            int i6 = AudioAttributesCompat.c;
            if ((i2 & 1) != 1) {
                if ((i2 & 4) != 4) {
                    switch (i5) {
                        case 2:
                            i4 = 0;
                            break;
                        case 3:
                            i4 = 8;
                            break;
                        case 4:
                            break;
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            i4 = 5;
                            break;
                        case 6:
                            i4 = 2;
                            break;
                        case 11:
                            i4 = 10;
                            break;
                        case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                        default:
                            i4 = 3;
                            break;
                        case 13:
                            i4 = 1;
                            break;
                    }
                } else {
                    i4 = 6;
                }
            } else {
                i4 = 7;
            }
        } else {
            i4 = i3;
        }
        if (i4 == 6) {
            i2 |= 4;
        } else if (i4 == 7) {
            i2 |= 1;
        }
        if (i == (i2 & 273) && this.a == cVar.a && this.d == i3) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.a), Integer.valueOf(this.d)});
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.a;
        int i2 = AudioAttributesCompat.c;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                str = "USAGE_GAME";
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
            default:
                str = ic.f("unknown usage ", i);
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.c).toUpperCase());
        return sb.toString();
    }
}
