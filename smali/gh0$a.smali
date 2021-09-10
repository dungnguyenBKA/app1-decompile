.class Lgh0$a;
.super Lph0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lph0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lch0$a;Ljava/lang/String;)V
    .locals 4

    const-string v0, ":"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lch0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lch0$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p1, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p1, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p1, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b(Lch0$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lug0;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 11

    .line 1
    iget-object v0, p1, Lug0;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lrg0;->b:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lug0;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lrh0;->t(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p1, Lug0;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lrh0;->o:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lug0;->d:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lrh0;->t(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v3, Lrg0;->b:Ljava/util/Comparator;

    .line 9
    sget-object v4, Lrh0;->a:[B

    .line 10
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, -0x1

    if-ge v6, v4, :cond_3

    .line 11
    aget-object v8, v2, v6

    move-object v9, v3

    check-cast v9, Lrg0$a;

    const-string v10, "TLS_FALLBACK_SCSV"

    invoke-virtual {v9, v8, v10}, Lrg0$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, -0x1

    :goto_3
    if-eqz p3, :cond_4

    if-eq v6, v7, :cond_4

    .line 12
    aget-object p3, v2, v6

    .line 13
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 14
    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    .line 15
    aput-object p3, v3, v2

    move-object v0, v3

    .line 16
    :cond_4
    iget-boolean p1, p1, Lug0;->a:Z

    if-eqz p1, :cond_a

    .line 17
    array-length p3, v0

    if-eqz p3, :cond_9

    .line 18
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 19
    array-length p1, v1

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    .line 22
    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_6
    return-void

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one TLS version is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no TLS versions for cleartext connections"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one cipher suite is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no cipher suites for cleartext connections"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public d(Llh0$a;)I
    .locals 0

    .line 1
    iget p1, p1, Llh0$a;->c:I

    return p1
.end method

.method public e(Ltg0;Lzh0;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ltg0;->b(Lzh0;)Z

    move-result p1

    return p1
.end method

.method public f(Ltg0;Lkg0;Ldi0;)Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Ltg0;->c(Lkg0;Ldi0;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public g(Lkg0;Lkg0;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lkg0;->d(Lkg0;)Z

    move-result p1

    return p1
.end method

.method public h(Ltg0;Lkg0;Ldi0;Lnh0;)Lzh0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Ltg0;->d(Lkg0;Ldi0;Lnh0;)Lzh0;

    move-result-object p1

    return-object p1
.end method

.method public i(Ltg0;Lzh0;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ltg0;->f(Lzh0;)V

    return-void
.end method

.method public j(Ltg0;)Lai0;
    .locals 0

    .line 1
    iget-object p1, p1, Ltg0;->e:Lai0;

    return-object p1
.end method

.method public k(Log0;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lih0;

    invoke-virtual {p1, p2}, Lih0;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
