package com.google.android.gms.internal.gtm;

import com.google.ads.AdSize;
import com.vungle.warren.error.VungleException;
import org.apache.http.HttpStatus;

public enum zzyl implements zzvb {
    LOGSID_NONE(0),
    LOGSID_IP_ADDRESS(1),
    LOGSID_IP_ADDRESS_INTERNAL(2),
    LOGSID_USER_AGENT(3),
    LOGSID_SENSITIVE_TIMESTAMP(4),
    LOGSID_SENSITIVE_LOCATION(5),
    LOGSID_APPROXIMATE_LOCATION(15),
    LOGSID_COARSE_LOCATION(6),
    LOGSID_OTHER_LOCATION(9),
    LOGSID_OTHER_VERSION_ID(7),
    LOGSID_REFERER(8),
    LOGSID_THIRD_PARTY_PARAMETERS(16),
    LOGSID_OTHER_PSEUDONYMOUS_ID(10),
    LOGSID_PREF(11),
    LOGSID_ZWIEBACK(12),
    LOGSID_BISCOTTI(13),
    LOGSID_CUSTOM_SESSION_ID(14),
    LOGSID_OTHER_PERSONAL_ID(20),
    LOGSID_GAIA_ID(21),
    LOGSID_EMAIL(22),
    LOGSID_USERNAME(23),
    LOGSID_PHONE_NUMBER(24),
    LOGSID_GAIA_ID_PUBLIC(HttpStatus.SC_MULTI_STATUS),
    LOGSID_OTHER_AUTHENTICATED_ID(30),
    LOGSID_OTHER_UNAUTHENTICATED_ID(31),
    LOGSID_PARTNER_OR_CUSTOMER_ID(32),
    LOGSID_PUBLISHER_ID(35),
    LOGSID_DASHER_ID(33),
    LOGSID_FOCUS_GROUP_ID(34),
    LOGSID_OTHER_MOBILE_DEVICE_ID(50),
    LOGSID_GSERVICES_ANDROID_ID(51),
    LOGSID_HARDWARE_ID(52),
    LOGSID_MSISDN_ID(53),
    LOGSID_BUILD_SERIAL_ID(54),
    LOGSID_UDID_ID(55),
    LOGSID_ANDROID_LOGGING_ID(56),
    LOGSID_SECURE_SETTINGS_ANDROID_ID(57),
    LOGSID_OTHER_IDENTIFYING_USER_INFO(100),
    LOGSID_USER_INPUT(HttpStatus.SC_OK),
    LOGSID_DEMOGRAPHIC_INFO(HttpStatus.SC_CREATED),
    LOGSID_GENERIC_KEY(HttpStatus.SC_ACCEPTED),
    LOGSID_GENERIC_VALUE(HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION),
    LOGSID_COOKIE(HttpStatus.SC_NO_CONTENT),
    LOGSID_URL(HttpStatus.SC_RESET_CONTENT),
    LOGSID_HTTPHEADER(HttpStatus.SC_PARTIAL_CONTENT);
    
    private static final zzvc<zzyl> zzT = new zzyk();
    private final int zzV;

    private zzyl(int i) {
        this.zzV = i;
    }

    public static zzvc<zzyl> zzb() {
        return zzT;
    }

    public static zzyl zzc(int i) {
        if (i == 100) {
            return LOGSID_OTHER_IDENTIFYING_USER_INFO;
        }
        switch (i) {
            case 0:
                return LOGSID_NONE;
            case 1:
                return LOGSID_IP_ADDRESS;
            case 2:
                return LOGSID_IP_ADDRESS_INTERNAL;
            case 3:
                return LOGSID_USER_AGENT;
            case 4:
                return LOGSID_SENSITIVE_TIMESTAMP;
            case 5:
                return LOGSID_SENSITIVE_LOCATION;
            case 6:
                return LOGSID_COARSE_LOCATION;
            case 7:
                return LOGSID_OTHER_VERSION_ID;
            case 8:
                return LOGSID_REFERER;
            case 9:
                return LOGSID_OTHER_LOCATION;
            case 10:
                return LOGSID_OTHER_PSEUDONYMOUS_ID;
            case 11:
                return LOGSID_PREF;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                return LOGSID_ZWIEBACK;
            case 13:
                return LOGSID_BISCOTTI;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return LOGSID_CUSTOM_SESSION_ID;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return LOGSID_APPROXIMATE_LOCATION;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return LOGSID_THIRD_PARTY_PARAMETERS;
            default:
                switch (i) {
                    case 20:
                        return LOGSID_OTHER_PERSONAL_ID;
                    case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                        return LOGSID_GAIA_ID;
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                        return LOGSID_EMAIL;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                        return LOGSID_USERNAME;
                    case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                        return LOGSID_PHONE_NUMBER;
                    default:
                        switch (i) {
                            case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                                return LOGSID_OTHER_AUTHENTICATED_ID;
                            case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                                return LOGSID_OTHER_UNAUTHENTICATED_ID;
                            case 32:
                                return LOGSID_PARTNER_OR_CUSTOMER_ID;
                            case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                                return LOGSID_DASHER_ID;
                            case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                                return LOGSID_FOCUS_GROUP_ID;
                            case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                                return LOGSID_PUBLISHER_ID;
                            default:
                                switch (i) {
                                    case AdSize.PORTRAIT_AD_HEIGHT:
                                        return LOGSID_OTHER_MOBILE_DEVICE_ID;
                                    case 51:
                                        return LOGSID_GSERVICES_ANDROID_ID;
                                    case 52:
                                        return LOGSID_HARDWARE_ID;
                                    case 53:
                                        return LOGSID_MSISDN_ID;
                                    case 54:
                                        return LOGSID_BUILD_SERIAL_ID;
                                    case 55:
                                        return LOGSID_UDID_ID;
                                    case 56:
                                        return LOGSID_ANDROID_LOGGING_ID;
                                    case 57:
                                        return LOGSID_SECURE_SETTINGS_ANDROID_ID;
                                    default:
                                        switch (i) {
                                            case HttpStatus.SC_OK /*{ENCODED_INT: 200}*/:
                                                return LOGSID_USER_INPUT;
                                            case HttpStatus.SC_CREATED /*{ENCODED_INT: 201}*/:
                                                return LOGSID_DEMOGRAPHIC_INFO;
                                            case HttpStatus.SC_ACCEPTED /*{ENCODED_INT: 202}*/:
                                                return LOGSID_GENERIC_KEY;
                                            case HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION /*{ENCODED_INT: 203}*/:
                                                return LOGSID_GENERIC_VALUE;
                                            case HttpStatus.SC_NO_CONTENT /*{ENCODED_INT: 204}*/:
                                                return LOGSID_COOKIE;
                                            case HttpStatus.SC_RESET_CONTENT /*{ENCODED_INT: 205}*/:
                                                return LOGSID_URL;
                                            case HttpStatus.SC_PARTIAL_CONTENT /*{ENCODED_INT: 206}*/:
                                                return LOGSID_HTTPHEADER;
                                            case HttpStatus.SC_MULTI_STATUS /*{ENCODED_INT: 207}*/:
                                                return LOGSID_GAIA_ID_PUBLIC;
                                            default:
                                                return null;
                                        }
                                }
                        }
                }
        }
    }

    public final String toString() {
        return Integer.toString(this.zzV);
    }

    @Override // com.google.android.gms.internal.gtm.zzvb
    public final int zza() {
        return this.zzV;
    }
}
