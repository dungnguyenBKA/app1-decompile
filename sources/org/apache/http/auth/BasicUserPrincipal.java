package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.LangUtils;

@Immutable
public final class BasicUserPrincipal implements Principal, Serializable {
    private static final long serialVersionUID = -2266305184969850467L;
    private final String username;

    public BasicUserPrincipal(String str) {
        if (str != null) {
            this.username = str;
            return;
        }
        throw new IllegalArgumentException("User name may not be null");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BasicUserPrincipal) || !LangUtils.equals(this.username, ((BasicUserPrincipal) obj).username)) {
            return false;
        }
        return true;
    }

    public String getName() {
        return this.username;
    }

    public int hashCode() {
        return LangUtils.hashCode(17, this.username);
    }

    public String toString() {
        return ic.l(ic.q("[principal: "), this.username, "]");
    }
}
