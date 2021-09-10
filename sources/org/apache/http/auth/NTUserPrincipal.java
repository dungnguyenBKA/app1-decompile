package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.LangUtils;

@Immutable
public class NTUserPrincipal implements Principal, Serializable {
    private static final long serialVersionUID = -6870169797924406894L;
    private final String domain;
    private final String ntname;
    private final String username;

    public NTUserPrincipal(String str, String str2) {
        if (str2 != null) {
            this.username = str2;
            if (str != null) {
                this.domain = str.toUpperCase(Locale.ENGLISH);
            } else {
                this.domain = null;
            }
            String str3 = this.domain;
            if (str3 == null || str3.length() <= 0) {
                this.ntname = str2;
                return;
            }
            this.ntname = this.domain + '/' + str2;
            return;
        }
        throw new IllegalArgumentException("User name may not be null");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NTUserPrincipal)) {
            return false;
        }
        NTUserPrincipal nTUserPrincipal = (NTUserPrincipal) obj;
        if (!LangUtils.equals(this.username, nTUserPrincipal.username) || !LangUtils.equals(this.domain, nTUserPrincipal.domain)) {
            return false;
        }
        return true;
    }

    public String getDomain() {
        return this.domain;
    }

    public String getName() {
        return this.ntname;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.username), this.domain);
    }

    public String toString() {
        return this.ntname;
    }
}
