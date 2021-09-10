.class public final Lfi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi0$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfi0;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Leh0$a;)Llh0;
    .locals 10

    .line 1
    check-cast p1, Lji0;

    .line 2
    invoke-virtual {p1}, Lji0;->e()Lgi0;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lji0;->j()Ldi0;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lji0;->c()Lsg0;

    move-result-object v2

    check-cast v2, Lzh0;

    .line 5
    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v6

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v3}, Lgi0;->b(Ljh0;)V

    .line 10
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v6

    .line 11
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v3}, Ljh0;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/b;->o0(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljh0;->a()Lkh0;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    .line 13
    invoke-virtual {v3, v6}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14
    invoke-interface {v0}, Lgi0;->e()V

    .line 15
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v6

    .line 16
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 17
    invoke-interface {v0, v6}, Lgi0;->d(Z)Llh0$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    .line 18
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3}, Ljh0;->a()Lkh0;

    move-result-object v2

    invoke-virtual {v2}, Lkh0;->contentLength()J

    move-result-wide v8

    .line 21
    new-instance v2, Lfi0$a;

    .line 22
    invoke-interface {v0, v3, v8, v9}, Lgi0;->f(Ljh0;J)Lqk0;

    move-result-object v6

    invoke-direct {v2, v6}, Lfi0$a;-><init>(Lqk0;)V

    .line 23
    invoke-static {v2}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object v2

    .line 24
    invoke-virtual {v3}, Ljh0;->a()Lkh0;

    move-result-object v6

    invoke-virtual {v6, v2}, Lkh0;->writeTo(Lyj0;)V

    .line 25
    invoke-interface {v2}, Lqk0;->close()V

    .line 26
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v2

    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v2}, Lzh0;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    invoke-virtual {v1}, Ldi0;->i()V

    .line 30
    :cond_2
    :goto_0
    invoke-interface {v0}, Lgi0;->a()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    .line 31
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object v6

    .line 32
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, v2}, Lgi0;->d(Z)Llh0$a;

    move-result-object v7

    .line 34
    :cond_3
    invoke-virtual {v7, v3}, Llh0$a;->o(Ljh0;)Llh0$a;

    .line 35
    invoke-virtual {v1}, Ldi0;->d()Lzh0;

    move-result-object v6

    invoke-virtual {v6}, Lzh0;->h()Lbh0;

    move-result-object v6

    invoke-virtual {v7, v6}, Llh0$a;->g(Lbh0;)Llh0$a;

    .line 36
    invoke-virtual {v7, v4, v5}, Llh0$a;->p(J)Llh0$a;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Llh0$a;->n(J)Llh0$a;

    .line 38
    invoke-virtual {v7}, Llh0$a;->c()Llh0;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Llh0;->L()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    .line 40
    invoke-interface {v0, v2}, Lgi0;->d(Z)Llh0$a;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v3}, Llh0$a;->o(Ljh0;)Llh0$a;

    .line 42
    invoke-virtual {v1}, Ldi0;->d()Lzh0;

    move-result-object v3

    invoke-virtual {v3}, Lzh0;->h()Lbh0;

    move-result-object v3

    invoke-virtual {v2, v3}, Llh0$a;->g(Lbh0;)Llh0$a;

    .line 43
    invoke-virtual {v2, v4, v5}, Llh0$a;->p(J)Llh0$a;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Llh0$a;->n(J)Llh0$a;

    .line 45
    invoke-virtual {v2}, Llh0$a;->c()Llh0;

    move-result-object v6

    .line 46
    invoke-virtual {v6}, Llh0;->L()I

    move-result v7

    .line 47
    :cond_4
    invoke-virtual {p1}, Lji0;->d()Lzg0;

    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-boolean p1, p0, Lfi0;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    .line 50
    invoke-virtual {v6}, Llh0;->k0()Llh0$a;

    move-result-object p1

    sget-object v0, Lrh0;->c:Lmh0;

    .line 51
    invoke-virtual {p1, v0}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 52
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v6}, Llh0;->k0()Llh0$a;

    move-result-object p1

    .line 54
    invoke-interface {v0, v6}, Lgi0;->c(Llh0;)Lmh0;

    move-result-object v0

    invoke-virtual {p1, v0}, Llh0$a;->b(Lmh0;)Llh0$a;

    .line 55
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    .line 56
    :goto_1
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 57
    invoke-virtual {p1, v2}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    :cond_6
    invoke-virtual {v1}, Ldi0;->i()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    .line 59
    :cond_8
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    :cond_9
    return-object p1

    .line 60
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Llh0;->j()Lmh0;

    move-result-object p1

    invoke-virtual {p1}, Lmh0;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
