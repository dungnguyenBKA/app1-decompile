.class public Lmj0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lmj0;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    invoke-static {}, Lmj0;->l()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    .line 2
    invoke-static {}, Lmj0;->l()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    .line 4
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 5
    new-instance v5, Lgj0;

    invoke-direct {v5, v4}, Lgj0;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_1
    :goto_1
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_2

    goto/16 :goto_e

    .line 6
    :cond_2
    const-class v4, [B

    invoke-static {}, Lmj0;->l()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_8

    .line 7
    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v6, v0

    goto :goto_4

    :catch_2
    :try_start_3
    const-string v0, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 9
    :goto_4
    new-instance v7, Llj0;

    const-string v0, "setUseSessionTickets"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v3

    invoke-direct {v7, v1, v0, v5}, Llj0;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 10
    new-instance v8, Llj0;

    const-string v0, "setHostname"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v3

    invoke-direct {v8, v1, v0, v5}, Llj0;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v0, "GMSCore_OpenSSL"

    .line 11
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    :try_start_4
    const-string v0, "android.net.Network"

    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :catch_3
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_5

    .line 13
    :try_start_5
    new-instance v0, Llj0;

    const-string v5, "getAlpnSelectedProtocol"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v5, v9}, Llj0;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 14
    new-instance v5, Llj0;

    const-string v9, "setAlpnProtocols"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-direct {v5, v1, v9, v2}, Llj0;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v9, v0

    move-object v10, v5

    goto :goto_7

    :cond_5
    move-object v9, v1

    move-object v10, v9

    .line 15
    :goto_7
    new-instance v0, Lhj0;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lhj0;-><init>(Ljava/lang/Class;Llj0;Llj0;Llj0;Llj0;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v0

    :catch_4
    :goto_8
    const-string v0, "No platform found on Android"

    .line 16
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_9
    move-object v5, v1

    goto/16 :goto_e

    :cond_6
    const-string v0, "okhttp.platform"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "conscrypt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_a

    .line 18
    :cond_7
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Conscrypt"

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_8

    .line 20
    invoke-static {}, Lij0;->p()Lij0;

    move-result-object v0

    if-eqz v0, :cond_8

    :goto_b
    move-object v5, v0

    goto/16 :goto_e

    .line 21
    :cond_8
    :try_start_6
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string v4, "setApplicationProtocols"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    aput-object v6, v5, v3

    .line 22
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    const-class v4, Ljavax/net/ssl/SSLSocket;

    const-string v5, "getApplicationProtocol"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 24
    new-instance v5, Ljj0;

    invoke-direct {v5, v0, v4}, Ljj0;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_c

    :catch_5
    move-object v5, v1

    :goto_c
    if-eqz v5, :cond_9

    goto :goto_e

    :cond_9
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 25
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 26
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 27
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 28
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v5, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 29
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v4, "get"

    new-array v5, v2, [Ljava/lang/Class;

    .line 30
    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v4, "remove"

    new-array v2, v2, [Ljava/lang/Class;

    .line 31
    const-class v5, Ljavax/net/ssl/SSLSocket;

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 32
    new-instance v0, Lkj0;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lkj0;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v1, v0

    goto :goto_d

    :catch_6
    nop

    :goto_d
    if-eqz v1, :cond_a

    goto/16 :goto_9

    .line 33
    :cond_a
    new-instance v0, Lmj0;

    invoke-direct {v0}, Lmj0;-><init>()V

    goto :goto_b

    .line 34
    :goto_e
    sput-object v5, Lmj0;->a:Lmj0;

    .line 35
    const-class v0, Lgh0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmj0;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhh0;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhh0;

    .line 4
    sget-object v4, Lhh0;->c:Lhh0;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lhh0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static h()Lmj0;
    .locals 1

    .line 1
    sget-object v0, Lmj0;->a:Lmj0;

    return-object v0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "java.vm.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public c(Ljavax/net/ssl/X509TrustManager;)Lqj0;
    .locals 1

    .line 1
    new-instance v0, Loj0;

    invoke-virtual {p0, p1}, Lmj0;->d(Ljavax/net/ssl/X509TrustManager;)Lsj0;

    move-result-object p1

    invoke-direct {v0, p1}, Loj0;-><init>(Lsj0;)V

    return-object v0
.end method

.method public d(Ljavax/net/ssl/X509TrustManager;)Lsj0;
    .locals 1

    .line 1
    new-instance v0, Lpj0;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lpj0;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public e(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    return-void
.end method

.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lhh0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public i()Ljavax/net/ssl/SSLContext;
    .locals 3

    const-string v0, "java.specification.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.7"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "TLSv1.2"

    .line 3
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    :try_start_1
    const-string v0, "TLS"

    .line 4
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lmj0;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public n(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 2
    :goto_0
    sget-object v0, Lmj0;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const-string v0, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    .line 1
    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x5

    .line 2
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lmj0;->n(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
