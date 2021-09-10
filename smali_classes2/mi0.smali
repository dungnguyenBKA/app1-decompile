.class public final Lmi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# instance fields
.field private final a:Lgh0;

.field private volatile b:Ldi0;

.field private c:Ljava/lang/Object;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lgh0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmi0;->a:Lgh0;

    return-void
.end method

.method private b(Ldh0;)Lkg0;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Ldh0;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v1}, Lgh0;->t()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v1}, Lgh0;->i()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v3}, Lgh0;->b()Lqg0;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_0
    new-instance v1, Lkg0;

    invoke-virtual/range {p1 .. p1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ldh0;->t()I

    move-result v6

    iget-object v2, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v2}, Lgh0;->f()Lyg0;

    move-result-object v7

    iget-object v2, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v2}, Lgh0;->s()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lmi0;->a:Lgh0;

    .line 6
    invoke-virtual {v2}, Lgh0;->p()Llg0;

    move-result-object v12

    iget-object v2, v0, Lmi0;->a:Lgh0;

    .line 7
    invoke-virtual {v2}, Lgh0;->n()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v2}, Lgh0;->m()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v2}, Lgh0;->d()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lmi0;->a:Lgh0;

    invoke-virtual {v2}, Lgh0;->q()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lkg0;-><init>(Ljava/lang/String;ILyg0;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lqg0;Llg0;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private c(Llh0;Lnh0;)Ljh0;
    .locals 6

    .line 1
    invoke-virtual {p1}, Llh0;->L()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v1

    invoke-virtual {v1}, Ljh0;->f()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_a

    const/16 v2, 0x134

    if-eq v0, v2, :cond_a

    const/16 v2, 0x191

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_6

    const/16 v2, 0x197

    if-eq v0, v2, :cond_4

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 3
    :cond_0
    iget-object v0, p0, Lmi0;->a:Lgh0;

    invoke-virtual {v0}, Lgh0;->r()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    .line 4
    :cond_1
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v0

    invoke-virtual {v0}, Ljh0;->a()Lkh0;

    .line 5
    invoke-virtual {p1}, Llh0;->l0()Llh0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Llh0;->l0()Llh0;

    move-result-object v0

    invoke-virtual {v0}, Llh0;->L()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-object v4

    :cond_2
    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lmi0;->f(Llh0;I)I

    move-result p2

    if-lez p2, :cond_3

    return-object v4

    .line 8
    :cond_3
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p2}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_5

    .line 11
    iget-object p1, p0, Lmi0;->a:Lgh0;

    invoke-virtual {p1}, Lgh0;->p()Llg0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 12
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    invoke-virtual {p1}, Llh0;->l0()Llh0;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 14
    invoke-virtual {p1}, Llh0;->l0()Llh0;

    move-result-object p2

    invoke-virtual {p2}, Llh0;->L()I

    move-result p2

    if-ne p2, v2, :cond_7

    return-object v4

    :cond_7
    const p2, 0x7fffffff

    .line 15
    invoke-direct {p0, p1, p2}, Lmi0;->f(Llh0;I)I

    move-result p2

    if-nez p2, :cond_8

    .line 16
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v4

    .line 17
    :cond_9
    iget-object p1, p0, Lmi0;->a:Lgh0;

    invoke-virtual {p1}, Lgh0;->a()Llg0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 18
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    return-object v4

    .line 19
    :cond_b
    :pswitch_0
    iget-object p2, p0, Lmi0;->a:Lgh0;

    invoke-virtual {p2}, Lgh0;->g()Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    :cond_c
    const-string p2, "Location"

    .line 20
    invoke-virtual {p1, p2}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d

    return-object v4

    .line 21
    :cond_d
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v0

    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldh0;->x(Ljava/lang/String;)Ldh0;

    move-result-object p2

    if-nez p2, :cond_e

    return-object v4

    .line 22
    :cond_e
    invoke-virtual {p2}, Ldh0;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v2

    invoke-virtual {v2}, Ljh0;->h()Ldh0;

    move-result-object v2

    invoke-virtual {v2}, Ldh0;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 23
    iget-object v0, p0, Lmi0;->a:Lgh0;

    invoke-virtual {v0}, Lgh0;->h()Z

    move-result v0

    if-nez v0, :cond_f

    return-object v4

    .line 24
    :cond_f
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v0

    invoke-virtual {v0}, Ljh0;->g()Ljh0$a;

    move-result-object v0

    .line 25
    invoke-static {v1}, Landroidx/core/app/b;->o0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "PROPFIND"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    .line 28
    invoke-virtual {v0, v3, v4}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    goto :goto_0

    :cond_10
    if-eqz v5, :cond_11

    .line 29
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v2

    invoke-virtual {v2}, Ljh0;->a()Lkh0;

    move-result-object v4

    .line 30
    :cond_11
    invoke-virtual {v0, v1, v4}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    :goto_0
    if-nez v5, :cond_12

    const-string v1, "Transfer-Encoding"

    .line 31
    invoke-virtual {v0, v1}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    const-string v1, "Content-Length"

    .line 32
    invoke-virtual {v0, v1}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    const-string v1, "Content-Type"

    .line 33
    invoke-virtual {v0, v1}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    .line 34
    :cond_12
    invoke-direct {p0, p1, p2}, Lmi0;->g(Llh0;Ldh0;)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "Authorization"

    .line 35
    invoke-virtual {v0, p1}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    .line 36
    :cond_13
    invoke-virtual {v0, p2}, Ljh0$a;->h(Ldh0;)Ljh0$a;

    invoke-virtual {v0}, Ljh0$a;->b()Ljh0;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e(Ljava/io/IOException;Ldi0;ZLjh0;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Ldi0;->m(Ljava/io/IOException;)V

    .line 2
    iget-object p4, p0, Lmi0;->a:Lgh0;

    invoke-virtual {p4}, Lgh0;->r()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    instance-of p4, p1, Ljava/io/FileNotFoundException;

    if-eqz p4, :cond_1

    return v0

    .line 4
    :cond_1
    instance-of p4, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of p4, p1, Ljava/io/InterruptedIOException;

    if-eqz p4, :cond_3

    .line 6
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    goto :goto_1

    .line 7
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_7

    return v0

    .line 10
    :cond_7
    invoke-virtual {p2}, Ldi0;->g()Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method private f(Llh0;I)I
    .locals 1

    const-string v0, "Retry-After"

    .line 1
    invoke-virtual {p1, v0}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private g(Llh0;Ldh0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object p1

    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ldh0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ldh0;->t()I

    move-result v0

    invoke-virtual {p2}, Ldh0;->t()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ldh0;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ldh0;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmi0;->d:Z

    .line 2
    iget-object v0, p0, Lmi0;->b:Ldi0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ldi0;->b()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmi0;->d:Z

    return v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmi0;->c:Ljava/lang/Object;

    return-void
.end method

.method public intercept(Leh0$a;)Llh0;
    .locals 14

    .line 1
    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lji0;->a()Log0;

    move-result-object v7

    .line 3
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v8

    .line 4
    new-instance v9, Ldi0;

    iget-object v1, p0, Lmi0;->a:Lgh0;

    invoke-virtual {v1}, Lgh0;->c()Ltg0;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v1

    invoke-direct {p0, v1}, Lmi0;->b(Ldh0;)Lkg0;

    move-result-object v3

    iget-object v6, p0, Lmi0;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ldi0;-><init>(Ltg0;Lkg0;Log0;Lzg0;Ljava/lang/Object;)V

    .line 6
    iput-object v9, p0, Lmi0;->b:Ldi0;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    move-object v2, v11

    .line 7
    :goto_0
    iget-boolean v3, p0, Lmi0;->d:Z

    if-nez v3, :cond_8

    .line 8
    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Lji0;->g(Ljh0;Ldi0;Lgi0;Lzh0;)Llh0;

    move-result-object v0
    :try_end_0
    .catch Lbi0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0}, Llh0;->k0()Llh0$a;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Llh0;->k0()Llh0$a;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v11}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 12
    invoke-virtual {v2}, Llh0$a;->c()Llh0;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Llh0$a;->l(Llh0;)Llh0$a;

    .line 14
    invoke-virtual {v0}, Llh0$a;->c()Llh0;

    move-result-object v0

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ldi0;->l()Lnh0;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmi0;->c(Llh0;Lnh0;)Ljh0;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    .line 16
    invoke-virtual {v9}, Ldi0;->j()V

    return-object v0

    .line 17
    :cond_1
    invoke-virtual {v0}, Llh0;->j()Lmh0;

    move-result-object v2

    invoke-static {v2}, Lrh0;->g(Ljava/io/Closeable;)V

    add-int/lit8 v13, v1, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_4

    .line 18
    invoke-virtual {v12}, Ljh0;->h()Ldh0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmi0;->g(Llh0;Ldh0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    invoke-virtual {v9}, Ldi0;->j()V

    .line 20
    new-instance v9, Ldi0;

    iget-object v1, p0, Lmi0;->a:Lgh0;

    invoke-virtual {v1}, Lgh0;->c()Ltg0;

    move-result-object v2

    .line 21
    invoke-virtual {v12}, Ljh0;->h()Ldh0;

    move-result-object v1

    invoke-direct {p0, v1}, Lmi0;->b(Ldh0;)Lkg0;

    move-result-object v3

    iget-object v6, p0, Lmi0;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ldi0;-><init>(Ltg0;Lkg0;Log0;Lzg0;Ljava/lang/Object;)V

    .line 22
    iput-object v9, p0, Lmi0;->b:Ldi0;

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v9}, Ldi0;->c()Lgi0;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v2, v0

    move-object v0, v12

    move v1, v13

    goto :goto_0

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_4
    invoke-virtual {v9}, Ldi0;->j()V

    .line 26
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Too many follow-up requests: "

    invoke-static {v0, v13}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {v9}, Ldi0;->j()V

    .line 28
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 29
    :try_start_2
    instance-of v4, v3, Lpi0;

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 30
    :goto_2
    invoke-direct {p0, v3, v9, v4, v0}, Lmi0;->e(Ljava/io/IOException;Ldi0;ZLjh0;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    throw v3

    :catch_2
    move-exception v3

    .line 31
    invoke-virtual {v3}, Lbi0;->c()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lmi0;->e(Ljava/io/IOException;Ldi0;ZLjh0;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    .line 32
    :cond_7
    invoke-virtual {v3}, Lbi0;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :goto_3
    invoke-virtual {v9, v11}, Ldi0;->m(Ljava/io/IOException;)V

    .line 34
    invoke-virtual {v9}, Ldi0;->j()V

    throw p1

    .line 35
    :cond_8
    invoke-virtual {v9}, Ldi0;->j()V

    .line 36
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
