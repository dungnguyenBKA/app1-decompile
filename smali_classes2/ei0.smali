.class public final Lei0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# instance fields
.field private final a:Lwg0;


# direct methods
.method public constructor <init>(Lwg0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lei0;->a:Lwg0;

    return-void
.end method


# virtual methods
.method public intercept(Leh0$a;)Llh0;
    .locals 14

    .line 1
    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljh0;->g()Ljh0$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljh0;->a()Lkh0;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lkh0;->contentType()Lfh0;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Lfh0;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lkh0;->contentLength()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 8
    invoke-virtual {v1, v2}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    .line 9
    invoke-virtual {v1, v2, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 10
    invoke-virtual {v1, v6}, Ljh0$a;->f(Ljava/lang/String;)Ljh0$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v7

    invoke-static {v7, v8}, Lrh0;->p(Ldh0;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 16
    invoke-virtual {v1, v2, v9}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 17
    :goto_1
    iget-object v7, p0, Lei0;->a:Lwg0;

    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v10

    invoke-interface {v7, v10}, Lwg0;->b(Ldh0;)Ljava/util/List;

    move-result-object v7

    .line 18
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_2
    if-ge v8, v11, :cond_7

    if-lez v8, :cond_6

    const-string v12, "; "

    .line 21
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_6
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lvg0;

    .line 23
    invoke-virtual {v12}, Lvg0;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lvg0;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cookie"

    .line 25
    invoke-virtual {v1, v8, v7}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    :cond_8
    const-string v7, "User-Agent"

    .line 26
    invoke-virtual {v0, v7}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    const-string v8, "okhttp/3.12.12"

    .line 27
    invoke-virtual {v1, v7, v8}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 28
    :cond_9
    invoke-virtual {v1}, Ljh0$a;->b()Ljh0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lji0;->f(Ljh0;)Llh0;

    move-result-object p1

    .line 29
    iget-object v1, p0, Lei0;->a:Lwg0;

    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v7

    invoke-virtual {p1}, Llh0;->b0()Lch0;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lii0;->d(Lwg0;Ldh0;Lch0;)V

    .line 30
    invoke-virtual {p1}, Llh0;->k0()Llh0$a;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Llh0$a;->o(Ljh0;)Llh0$a;

    if-eqz v2, :cond_a

    const-string v0, "Content-Encoding"

    .line 32
    invoke-virtual {p1, v0}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    invoke-static {p1}, Lii0;->b(Llh0;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 34
    new-instance v2, Lgk0;

    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object v7

    invoke-virtual {v7}, Lmh0;->source()Lzj0;

    move-result-object v7

    invoke-direct {v2, v7}, Lgk0;-><init>(Lrk0;)V

    .line 35
    invoke-virtual {p1}, Llh0;->b0()Lch0;

    move-result-object v7

    invoke-virtual {v7}, Lch0;->e()Lch0$a;

    move-result-object v7

    .line 36
    invoke-virtual {v7, v0}, Lch0$a;->c(Ljava/lang/String;)Lch0$a;

    .line 37
    invoke-virtual {v7, v6}, Lch0$a;->c(Ljava/lang/String;)Lch0$a;

    .line 38
    invoke-virtual {v7}, Lch0$a;->b()Lch0;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Llh0$a;->i(Lch0;)Llh0$a;

    .line 40
    invoke-virtual {p1, v3}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v0, Lki0;

    invoke-static {v2}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v2

    invoke-direct {v0, p1, v4, v5, v2}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    invoke-virtual {v1, v0}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 42
    :cond_a
    invoke-virtual {v1}, Llh0$a;->c()Llh0;

    move-result-object p1

    return-object p1
.end method
