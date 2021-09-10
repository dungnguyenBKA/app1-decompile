.class final Llk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyj0;


# instance fields
.field public final b:Lxj0;

.field public final c:Lqk0;

.field d:Z


# direct methods
.method constructor <init>(Lqk0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxj0;

    invoke-direct {v0}, Lxj0;-><init>()V

    iput-object v0, p0, Llk0;->b:Lxj0;

    const-string v0, "sink == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Llk0;->c:Lqk0;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->z0(Ljava/lang/String;)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Lxj0;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2, p3}, Lxj0;->H(Lxj0;J)V

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I(Lrk0;)J
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Llk0;->b:Lxj0;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lrk0;->read(Lxj0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public J(J)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2}, Lxj0;->v0(J)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U(Lak0;)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->r0(Lak0;)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lxj0;
    .locals 1

    .line 1
    iget-object v0, p0, Llk0;->b:Lxj0;

    return-object v0
.end method

.method public close()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Llk0;->b:Lxj0;

    iget-wide v2, v1, Lxj0;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 3
    iget-object v4, p0, Llk0;->c:Lqk0;

    invoke-interface {v4, v1, v2, v3}, Lqk0;->H(Lxj0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Llk0;->c:Lqk0;

    invoke-interface {v1}, Lqk0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Llk0;->d:Z

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v1, Ltk0;->a:Ljava/nio/charset/Charset;

    .line 7
    throw v0
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    iget-wide v1, v0, Lxj0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    iget-object v3, p0, Llk0;->c:Lqk0;

    invoke-interface {v3, v0, v1, v2}, Lqk0;->H(Lxj0;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Llk0;->c:Lqk0;

    invoke-interface {v0}, Lqk0;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lyj0;
    .locals 6

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    .line 3
    iget-wide v1, v0, Lxj0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v3, p0, Llk0;->c:Lqk0;

    invoke-interface {v3, v0, v1, v2}, Lqk0;->H(Lxj0;J)V

    :cond_0
    return-object p0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(I)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->x0(I)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m(I)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->w0(I)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(I)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ltk0;->c(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lxj0;->w0(I)Lxj0;

    .line 5
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Llk0;->c:Lqk0;

    invoke-interface {v0}, Lqk0;->timeout()Lsk0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llk0;->c:Lqk0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->u0(I)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 9
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 11
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lyj0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->s0([B)Lxj0;

    .line 3
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lyj0;
    .locals 1

    .line 5
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2, p3}, Lxj0;->t0([BII)Lxj0;

    .line 7
    invoke-virtual {p0}, Llk0;->x()Lyj0;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Lyj0;
    .locals 5

    .line 1
    iget-boolean v0, p0, Llk0;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Llk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v2, p0, Llk0;->c:Lqk0;

    iget-object v3, p0, Llk0;->b:Lxj0;

    invoke-interface {v2, v3, v0, v1}, Lqk0;->H(Lxj0;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
