.class public final Loi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgi0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loi0$g;,
        Loi0$d;,
        Loi0$f;,
        Loi0$b;,
        Loi0$c;,
        Loi0$e;
    }
.end annotation


# instance fields
.field final a:Lgh0;

.field final b:Ldi0;

.field final c:Lzj0;

.field final d:Lyj0;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lgh0;Ldi0;Lzj0;Lyj0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Loi0;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Loi0;->f:J

    .line 4
    iput-object p1, p0, Loi0;->a:Lgh0;

    .line 5
    iput-object p2, p0, Loi0;->b:Ldi0;

    .line 6
    iput-object p3, p0, Loi0;->c:Lzj0;

    .line 7
    iput-object p4, p0, Loi0;->d:Lyj0;

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Loi0;->c:Lzj0;

    iget-wide v1, p0, Loi0;->f:J

    invoke-interface {v0, v1, v2}, Lzj0;->y(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Loi0;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Loi0;->f:J

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Loi0;->d:Lyj0;

    invoke-interface {v0}, Lyj0;->flush()V

    return-void
.end method

.method public b(Ljh0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loi0;->b:Ldi0;

    .line 2
    invoke-virtual {v0}, Ldi0;->d()Lzh0;

    move-result-object v0

    invoke-virtual {v0}, Lzh0;->m()Lnh0;

    move-result-object v0

    invoke-virtual {v0}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljh0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljh0;->e()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object v0

    invoke-static {v0}, Lli0;->a(Ldh0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljh0;->d()Lch0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Loi0;->k(Lch0;Ljava/lang/String;)V

    return-void
.end method

.method public c(Llh0;)Lmh0;
    .locals 9

    .line 1
    iget-object v0, p0, Loi0;->b:Ldi0;

    iget-object v0, v0, Ldi0;->f:Lzg0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {p1, v0}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lii0;->b(Llh0;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Loi0;->h(J)Lrk0;

    move-result-object p1

    .line 6
    new-instance v3, Lki0;

    invoke-static {p1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 7
    invoke-virtual {p1, v1}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Llh0;->n0()Ljh0;

    move-result-object p1

    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object p1

    .line 9
    iget v1, p0, Loi0;->e:I

    if-ne v1, v4, :cond_1

    .line 10
    iput v2, p0, Loi0;->e:I

    .line 11
    new-instance v1, Loi0$d;

    invoke-direct {v1, p0, p1}, Loi0$d;-><init>(Loi0;Ldh0;)V

    .line 12
    new-instance p1, Lki0;

    invoke-static {v1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v1

    invoke-direct {p1, v0, v5, v6, v1}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    return-object p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Loi0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-static {p1}, Lii0;->a(Llh0;)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0, v7, v8}, Loi0;->h(J)Lrk0;

    move-result-object p1

    .line 16
    new-instance v1, Lki0;

    invoke-static {p1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    invoke-direct {v1, v0, v7, v8, p1}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    return-object v1

    .line 17
    :cond_3
    new-instance p1, Lki0;

    .line 18
    iget v1, p0, Loi0;->e:I

    if-ne v1, v4, :cond_5

    .line 19
    iget-object v1, p0, Loi0;->b:Ldi0;

    if-eqz v1, :cond_4

    .line 20
    iput v2, p0, Loi0;->e:I

    .line 21
    invoke-virtual {v1}, Ldi0;->i()V

    .line 22
    new-instance v1, Loi0$g;

    invoke-direct {v1, p0}, Loi0$g;-><init>(Loi0;)V

    .line 23
    invoke-static {v1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v1

    invoke-direct {p1, v0, v5, v6, v1}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    return-object p1

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Loi0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Loi0;->b:Ldi0;

    invoke-virtual {v0}, Ldi0;->d()Lzh0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzh0;->c()V

    :cond_0
    return-void
.end method

.method public d(Z)Llh0$a;
    .locals 4

    .line 1
    iget v0, p0, Loi0;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Loi0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Loi0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lni0;->a(Ljava/lang/String;)Lni0;

    move-result-object v0

    .line 4
    new-instance v2, Llh0$a;

    invoke-direct {v2}, Llh0$a;-><init>()V

    iget-object v3, v0, Lni0;->a:Lhh0;

    .line 5
    invoke-virtual {v2, v3}, Llh0$a;->m(Lhh0;)Llh0$a;

    iget v3, v0, Lni0;->b:I

    .line 6
    invoke-virtual {v2, v3}, Llh0$a;->f(I)Llh0$a;

    iget-object v3, v0, Lni0;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    .line 8
    invoke-virtual {p0}, Loi0;->j()Lch0;

    move-result-object v3

    invoke-virtual {v2, v3}, Llh0$a;->i(Lch0;)Llh0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lni0;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    iget p1, v0, Lni0;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Loi0;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Loi0;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loi0;->b:Ldi0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Loi0;->d:Lyj0;

    invoke-interface {v0}, Lyj0;->flush()V

    return-void
.end method

.method public f(Ljh0;J)Lqk0;
    .locals 5

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "state: "

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Loi0;->e:I

    if-ne p1, v2, :cond_0

    .line 3
    iput v0, p0, Loi0;->e:I

    .line 4
    new-instance p1, Loi0$c;

    invoke-direct {p1, p0}, Loi0$c;-><init>(Loi0;)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Loi0;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    .line 6
    iget p1, p0, Loi0;->e:I

    if-ne p1, v2, :cond_2

    .line 7
    iput v0, p0, Loi0;->e:I

    .line 8
    new-instance p1, Loi0$e;

    invoke-direct {p1, p0, p2, p3}, Loi0$e;-><init>(Loi0;J)V

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Loi0;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method g(Lek0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lek0;->i()Lsk0;

    move-result-object v0

    .line 2
    sget-object v1, Lsk0;->d:Lsk0;

    invoke-virtual {p1, v1}, Lek0;->j(Lsk0;)Lek0;

    .line 3
    invoke-virtual {v0}, Lsk0;->a()Lsk0;

    .line 4
    invoke-virtual {v0}, Lsk0;->b()Lsk0;

    return-void
.end method

.method public h(J)Lrk0;
    .locals 2

    .line 1
    iget v0, p0, Loi0;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Loi0;->e:I

    .line 3
    new-instance v0, Loi0$f;

    invoke-direct {v0, p0, p1, p2}, Loi0$f;-><init>(Loi0;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Loi0;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()Lch0;
    .locals 3

    .line 1
    new-instance v0, Lch0$a;

    invoke-direct {v0}, Lch0$a;-><init>()V

    .line 2
    :goto_0
    invoke-direct {p0}, Loi0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lph0;->a:Lph0;

    invoke-virtual {v2, v0, v1}, Lph0;->a(Lch0$a;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lch0$a;->b()Lch0;

    move-result-object v0

    return-object v0
.end method

.method public k(Lch0;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Loi0;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Loi0;->d:Lyj0;

    invoke-interface {v0, p2}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lch0;->f()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Loi0;->d:Lyj0;

    invoke-virtual {p1, p2}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Loi0;->d:Lyj0;

    invoke-interface {p1, v0}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Loi0;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Loi0;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
