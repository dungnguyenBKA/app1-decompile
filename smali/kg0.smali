.class public final Lkg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ldh0;

.field final b:Lyg0;

.field final c:Ljavax/net/SocketFactory;

.field final d:Llg0;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Lqg0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILyg0;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lqg0;Llg0;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 13
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lqg0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lyg0;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lqg0;",
            "Llg0;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lhh0;",
            ">;",
            "Ljava/util/List<",
            "Lug0;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ldh0$a;

    invoke-direct {v8}, Ldh0$a;-><init>()V

    const-string v9, "https"

    const-string v10, "http"

    if-eqz v5, :cond_0

    move-object v11, v9

    goto :goto_0

    :cond_0
    move-object v11, v10

    .line 3
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4
    iput-object v10, v8, Ldh0$a;->a:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6
    iput-object v9, v8, Ldh0$a;->a:Ljava/lang/String;

    :goto_1
    const-string v9, "host == null"

    .line 7
    invoke-static {p1, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    .line 9
    invoke-static {p1, v10, v9, v10}, Ldh0;->p(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-static {v9}, Lrh0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 11
    iput-object v9, v8, Ldh0$a;->d:Ljava/lang/String;

    if-lez v2, :cond_2

    const v1, 0xffff

    if-gt v2, v1, :cond_2

    .line 12
    iput v2, v8, Ldh0$a;->e:I

    .line 13
    invoke-virtual {v8}, Ldh0$a;->b()Ldh0;

    move-result-object v1

    iput-object v1, v0, Lkg0;->a:Ldh0;

    const-string v1, "dns == null"

    .line 14
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v3, v0, Lkg0;->b:Lyg0;

    const-string v1, "socketFactory == null"

    .line 16
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v4, v0, Lkg0;->c:Ljavax/net/SocketFactory;

    const-string v1, "proxyAuthenticator == null"

    .line 18
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iput-object v6, v0, Lkg0;->d:Llg0;

    const-string v1, "protocols == null"

    move-object/from16 v2, p10

    .line 20
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-static/range {p10 .. p10}, Lrh0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkg0;->e:Ljava/util/List;

    const-string v1, "connectionSpecs == null"

    move-object/from16 v2, p11

    .line 22
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-static/range {p11 .. p11}, Lrh0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkg0;->f:Ljava/util/List;

    const-string v1, "proxySelector == null"

    .line 24
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iput-object v7, v0, Lkg0;->g:Ljava/net/ProxySelector;

    move-object/from16 v1, p9

    .line 26
    iput-object v1, v0, Lkg0;->h:Ljava/net/Proxy;

    .line 27
    iput-object v5, v0, Lkg0;->i:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v1, p6

    .line 28
    iput-object v1, v0, Lkg0;->j:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v1, p7

    .line 29
    iput-object v1, v0, Lkg0;->k:Lqg0;

    return-void

    .line 30
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected port: "

    invoke-static {v3, p2}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected host: "

    invoke-static {v3, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected scheme: "

    invoke-static {v2, v11}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Lqg0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->k:Lqg0;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Lyg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg0;->b:Lyg0;

    return-object v0
.end method

.method d(Lkg0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkg0;->b:Lyg0;

    iget-object v1, p1, Lkg0;->b:Lyg0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->d:Llg0;

    iget-object v1, p1, Lkg0;->d:Llg0;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->e:Ljava/util/List;

    iget-object v1, p1, Lkg0;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->f:Ljava/util/List;

    iget-object v1, p1, Lkg0;->f:Ljava/util/List;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lkg0;->g:Ljava/net/ProxySelector;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lkg0;->h:Ljava/net/Proxy;

    .line 6
    invoke-static {v0, v1}, Lrh0;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lkg0;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 7
    invoke-static {v0, v1}, Lrh0;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lkg0;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 8
    invoke-static {v0, v1}, Lrh0;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->k:Lqg0;

    iget-object v1, p1, Lkg0;->k:Lqg0;

    .line 9
    invoke-static {v0, v1}, Lrh0;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lkg0;->a:Ldh0;

    .line 11
    iget v0, v0, Ldh0;->e:I

    .line 12
    iget-object p1, p1, Lkg0;->a:Ldh0;

    .line 13
    iget p1, p1, Ldh0;->e:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lkg0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkg0;->a:Ldh0;

    check-cast p1, Lkg0;

    iget-object v1, p1, Lkg0;->a:Ldh0;

    .line 2
    invoke-virtual {v0, v1}, Ldh0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lkg0;->d(Lkg0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public h()Llg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg0;->d:Llg0;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lkg0;->a:Ldh0;

    invoke-virtual {v0}, Ldh0;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lkg0;->b:Lyg0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lkg0;->d:Llg0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lkg0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lkg0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lkg0;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lkg0;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v0, p0, Lkg0;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lkg0;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Lkg0;->k:Lqg0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lqg0;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg0;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public j()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg0;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkg0;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public l()Ldh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg0;->a:Ldh0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Address{"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkg0;->a:Ldh0;

    .line 3
    iget-object v1, v1, Ldh0;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkg0;->a:Ldh0;

    .line 5
    iget v1, v1, Ldh0;->e:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lkg0;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkg0;->h:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkg0;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
