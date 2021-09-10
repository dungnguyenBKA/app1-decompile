.class public final Lth0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# instance fields
.field final a:Lwh0;


# direct methods
.method public constructor <init>(Lwh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lth0;->a:Lwh0;

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Llh0;)Llh0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Llh0;->k0()Llh0$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llh0$a;->b(Lmh0;)Llh0$a;

    invoke-virtual {p0}, Llh0$a;->c()Llh0;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Leh0$a;)Llh0;
    .locals 11

    .line 1
    iget-object v0, p0, Lth0;->a:Lwh0;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p1

    check-cast v1, Lji0;

    invoke-virtual {v1}, Lji0;->i()Ljh0;

    move-result-object v1

    invoke-interface {v0, v1}, Lwh0;->e(Ljh0;)Llh0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lvh0$a;

    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lvh0$a;-><init>(JLjh0;Llh0;)V

    invoke-virtual {v3}, Lvh0$a;->a()Lvh0;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lvh0;->a:Ljh0;

    .line 6
    iget-object v3, v1, Lvh0;->b:Llh0;

    .line 7
    iget-object v4, p0, Lth0;->a:Lwh0;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v1}, Lwh0;->b(Lvh0;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0}, Llh0;->j()Lmh0;

    move-result-object v1

    invoke-static {v1}, Lrh0;->g(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 10
    new-instance v0, Llh0$a;

    invoke-direct {v0}, Llh0$a;-><init>()V

    .line 11
    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object p1

    invoke-virtual {v0, p1}, Llh0$a;->o(Ljh0;)Llh0$a;

    sget-object p1, Lhh0;->d:Lhh0;

    .line 12
    invoke-virtual {v0, p1}, Llh0$a;->m(Lhh0;)Llh0$a;

    const/16 p1, 0x1f8

    .line 13
    invoke-virtual {v0, p1}, Llh0$a;->f(I)Llh0$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {v0, p1}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    sget-object p1, Lrh0;->c:Lmh0;

    .line 15
    invoke-virtual {v0, p1}, Llh0$a;->b(Lmh0;)Llh0$a;

    const-wide/16 v1, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Llh0$a;->p(J)Llh0$a;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llh0$a;->n(J)Llh0$a;

    .line 18
    invoke-virtual {v0}, Llh0$a;->c()Llh0;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v3}, Llh0;->k0()Llh0$a;

    move-result-object p1

    .line 20
    invoke-static {v3}, Lth0;->c(Llh0;)Llh0;

    move-result-object v0

    invoke-virtual {p1, v0}, Llh0$a;->d(Llh0;)Llh0$a;

    .line 21
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    return-object p1

    .line 22
    :cond_4
    :try_start_0
    invoke-virtual {p1, v2}, Lji0;->f(Ljh0;)Llh0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    :cond_5
    const/4 v0, 0x0

    if-eqz v3, :cond_d

    .line 24
    invoke-virtual {p1}, Llh0;->L()I

    move-result v1

    const/16 v4, 0x130

    if-ne v1, v4, :cond_c

    .line 25
    invoke-virtual {v3}, Llh0;->k0()Llh0$a;

    move-result-object v1

    .line 26
    invoke-virtual {v3}, Llh0;->b0()Lch0;

    move-result-object v2

    invoke-virtual {p1}, Llh0;->b0()Lch0;

    move-result-object v4

    .line 27
    new-instance v5, Lch0$a;

    invoke-direct {v5}, Lch0$a;-><init>()V

    .line 28
    invoke-virtual {v2}, Lch0;->f()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 29
    invoke-virtual {v2, v7}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v2, v7}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Warning"

    .line 31
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    .line 32
    :cond_6
    invoke-static {v8}, Lth0;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v8}, Lth0;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 33
    invoke-virtual {v4, v8}, Lch0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    .line 34
    :cond_7
    sget-object v10, Lph0;->a:Lph0;

    invoke-virtual {v10, v5, v8, v9}, Lph0;->b(Lch0$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 35
    :cond_9
    invoke-virtual {v4}, Lch0;->f()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_b

    .line 36
    invoke-virtual {v4, v0}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v6}, Lth0;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6}, Lth0;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 38
    sget-object v7, Lph0;->a:Lph0;

    invoke-virtual {v4, v0}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v8}, Lph0;->b(Lch0$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39
    :cond_b
    invoke-virtual {v5}, Lch0$a;->b()Lch0;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Llh0$a;->i(Lch0;)Llh0$a;

    .line 41
    invoke-virtual {p1}, Llh0;->o0()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llh0$a;->p(J)Llh0$a;

    .line 42
    invoke-virtual {p1}, Llh0;->m0()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llh0$a;->n(J)Llh0$a;

    .line 43
    invoke-static {v3}, Lth0;->c(Llh0;)Llh0;

    move-result-object v0

    invoke-virtual {v1, v0}, Llh0$a;->d(Llh0;)Llh0$a;

    .line 44
    invoke-static {p1}, Lth0;->c(Llh0;)Llh0;

    move-result-object v0

    invoke-virtual {v1, v0}, Llh0$a;->k(Llh0;)Llh0$a;

    .line 45
    invoke-virtual {v1}, Llh0$a;->c()Llh0;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object p1

    invoke-virtual {p1}, Lmh0;->close()V

    .line 47
    iget-object p1, p0, Lth0;->a:Lwh0;

    invoke-interface {p1}, Lwh0;->a()V

    .line 48
    iget-object p1, p0, Lth0;->a:Lwh0;

    invoke-interface {p1, v3, v0}, Lwh0;->f(Llh0;Llh0;)V

    return-object v0

    .line 49
    :cond_c
    invoke-virtual {v3}, Llh0;->j()Lmh0;

    move-result-object v1

    invoke-static {v1}, Lrh0;->g(Ljava/io/Closeable;)V

    .line 50
    :cond_d
    invoke-virtual {p1}, Llh0;->k0()Llh0$a;

    move-result-object v1

    .line 51
    invoke-static {v3}, Lth0;->c(Llh0;)Llh0;

    move-result-object v3

    invoke-virtual {v1, v3}, Llh0$a;->d(Llh0;)Llh0$a;

    .line 52
    invoke-static {p1}, Lth0;->c(Llh0;)Llh0;

    move-result-object p1

    invoke-virtual {v1, p1}, Llh0$a;->k(Llh0;)Llh0$a;

    .line 53
    invoke-virtual {v1}, Llh0$a;->c()Llh0;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lth0;->a:Lwh0;

    if-eqz v1, :cond_13

    .line 55
    invoke-static {p1}, Lii0;->b(Llh0;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p1, v2}, Lvh0;->a(Llh0;Ljh0;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 56
    iget-object v0, p0, Lth0;->a:Lwh0;

    invoke-interface {v0, p1}, Lwh0;->d(Llh0;)Luh0;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_4

    .line 57
    :cond_e
    invoke-interface {v0}, Luh0;->a()Lqk0;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_4

    .line 58
    :cond_f
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object v2

    invoke-virtual {v2}, Lmh0;->source()Lzj0;

    move-result-object v2

    .line 59
    invoke-static {v1}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object v1

    .line 60
    new-instance v3, Lsh0;

    invoke-direct {v3, p0, v2, v0, v1}, Lsh0;-><init>(Lth0;Lzj0;Luh0;Lyj0;)V

    const-string v0, "Content-Type"

    .line 61
    invoke-virtual {p1, v0}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object v1

    invoke-virtual {v1}, Lmh0;->contentLength()J

    move-result-wide v1

    .line 63
    invoke-virtual {p1}, Llh0;->k0()Llh0$a;

    move-result-object p1

    new-instance v4, Lki0;

    .line 64
    invoke-static {v3}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    invoke-virtual {p1, v4}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 65
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    :goto_4
    return-object p1

    .line 66
    :cond_10
    invoke-virtual {v2}, Ljh0;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "POST"

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "PATCH"

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "PUT"

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "DELETE"

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "MOVE"

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    if-eqz v0, :cond_13

    .line 72
    :try_start_1
    iget-object v0, p0, Lth0;->a:Lwh0;

    invoke-interface {v0, v2}, Lwh0;->c(Ljh0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_13
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_14

    .line 73
    invoke-virtual {v0}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    :cond_14
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
