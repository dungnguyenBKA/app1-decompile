.class final Lmk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj0;


# instance fields
.field public final b:Lxj0;

.field public final c:Lrk0;

.field d:Z


# direct methods
.method constructor <init>(Lrk0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxj0;

    invoke-direct {v0}, Lxj0;-><init>()V

    iput-object v0, p0, Lmk0;->b:Lxj0;

    const-string v0, "source == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lmk0;->c:Lrk0;

    return-void
.end method


# virtual methods
.method public E(JLak0;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lak0;->m()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lmk0;->d:Z

    if-nez v1, :cond_5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-ltz v4, :cond_4

    if-ltz v0, :cond_4

    .line 3
    invoke-virtual {p3}, Lak0;->m()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    int-to-long v4, v1

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    .line 4
    invoke-virtual {p0, v6, v7}, Lmk0;->K(J)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v2, v4, v5}, Lxj0;->V(J)B

    move-result v2

    add-int v4, v3, v1

    invoke-virtual {p3, v4}, Lak0;->f(I)B

    move-result v4

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_1
    return v3

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public F(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-object v1, p0, Lmk0;->c:Lrk0;

    invoke-virtual {v0, v1}, Lxj0;->I(Lrk0;)J

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-wide v1, v0, Lxj0;->c:J

    invoke-virtual {v0, v1, v2, p1}, Lxj0;->k0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-wide v1, v0, Lxj0;->c:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 3
    iget-object v1, p0, Lmk0;->c:Lrk0;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lrk0;->read(Lxj0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->y(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->P()I

    move-result v0

    return v0
.end method

.method public Q(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lmk0;->K(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2}, Lxj0;->Q(J)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public W()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->W()S

    move-result v0

    return v0
.end method

.method public Y(Lqk0;)J
    .locals 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v4, p0, Lmk0;->c:Lrk0;

    iget-object v5, p0, Lmk0;->b:Lxj0;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lrk0;->read(Lxj0;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 2
    iget-object v4, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v4}, Lxj0;->L()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 3
    iget-object v6, p0, Lmk0;->b:Lxj0;

    move-object v7, p1

    check-cast v7, Lxj0;

    invoke-virtual {v7, v6, v4, v5}, Lxj0;->H(Lxj0;J)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Lmk0;->b:Lxj0;

    .line 5
    iget-wide v5, v4, Lxj0;->c:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    add-long/2addr v2, v5

    .line 6
    check-cast p1, Lxj0;

    invoke-virtual {p1, v4, v5, v6}, Lxj0;->H(Lxj0;J)V

    :cond_2
    return-wide v2
.end method

.method public a()Lxj0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmk0;->b:Lxj0;

    return-object v0
.end method

.method public c0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmk0;->K(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmk0;->d:Z

    .line 3
    iget-object v0, p0, Lmk0;->c:Lrk0;

    invoke-interface {v0}, Lrk0;->close()V

    .line 4
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->j()V

    return-void
.end method

.method public e0(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmk0;->j(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Lak0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lmk0;->K(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2}, Lxj0;->f(J)Lak0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public f0()J
    .locals 6

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 2
    invoke-virtual {p0, v3, v4}, Lmk0;->K(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v3, p0, Lmk0;->b:Lxj0;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lxj0;->V(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 6
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    :goto_2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->f0()J

    move-result-wide v0

    return-wide v0
.end method

.method public g0()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lmk0$a;

    invoke-direct {v0, p0}, Lmk0$a;-><init>(Lmk0;)V

    return-object v0
.end method

.method public h0(Lkk0;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lmk0;->b:Lxj0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lxj0;->o0(Lkk0;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lmk0;->c:Lrk0;

    iget-object v2, p0, Lmk0;->b:Lxj0;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lrk0;->read(Lxj0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_2
    iget-object p1, p1, Lkk0;->b:[Lak0;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lak0;->m()I

    move-result p1

    .line 5
    iget-object v1, p0, Lmk0;->b:Lxj0;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lxj0;->skip(J)V

    return v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j(BJJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v0, p2, p4

    if-gez v0, :cond_2

    .line 2
    iget-object v1, p0, Lmk0;->b:Lxj0;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lxj0;->b0(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-wide v1, v0, Lxj0;->c:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 4
    iget-object v3, p0, Lmk0;->c:Lrk0;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lrk0;->read(Lxj0;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public q()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-object v1, p0, Lmk0;->c:Lrk0;

    invoke-virtual {v0, v1}, Lxj0;->I(Lrk0;)J

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->q()[B

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 9
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-wide v1, v0, Lxj0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 10
    iget-object v1, p0, Lmk0;->c:Lrk0;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lrk0;->read(Lxj0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lxj0;J)J
    .locals 6

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lmk0;->d:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lmk0;->b:Lxj0;

    iget-wide v3, v2, Lxj0;->c:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    .line 3
    iget-object v0, p0, Lmk0;->c:Lrk0;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lrk0;->read(Lxj0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 4
    :cond_0
    iget-object v0, p0, Lmk0;->b:Lxj0;

    iget-wide v0, v0, Lxj0;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 5
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, p1, p2, p3}, Lxj0;->read(Lxj0;J)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 8

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, p1}, Lxj0;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lmk0;->b:Lxj0;

    iget-wide v3, v2, Lxj0;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    long-to-int v4, v3

    .line 4
    invoke-virtual {v2, p1, v1, v4}, Lxj0;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lmk0;->c0(J)V

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->readShort()S

    move-result v0

    return v0
.end method

.method public skip(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lmk0;->b:Lxj0;

    iget-wide v3, v2, Lxj0;->c:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget-object v0, p0, Lmk0;->c:Lrk0;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lrk0;->read(Lxj0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lmk0;->b:Lxj0;

    .line 5
    iget-wide v0, v0, Lxj0;->c:J

    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v2, v0, v1}, Lxj0;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public t()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0}, Lxj0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmk0;->c:Lrk0;

    iget-object v1, p0, Lmk0;->b:Lxj0;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lrk0;->read(Lxj0;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmk0;->c:Lrk0;

    invoke-interface {v0}, Lrk0;->timeout()Lsk0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmk0;->c:Lrk0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lak0;)J
    .locals 10

    .line 1
    iget-boolean v0, p0, Lmk0;->d:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v2, p1, v0, v1}, Lxj0;->i0(Lak0;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lmk0;->b:Lxj0;

    iget-wide v6, v2, Lxj0;->c:J

    .line 4
    iget-object v3, p0, Lmk0;->c:Lrk0;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v2, v8, v9}, Lrk0;->read(Lxj0;J)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-nez v8, :cond_1

    move-wide v2, v4

    :goto_1
    return-wide v2

    .line 5
    :cond_1
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public y(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    add-long v4, p1, v0

    :goto_0
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    move-wide v10, v4

    .line 1
    invoke-virtual/range {v6 .. v11}, Lmk0;->j(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    .line 2
    iget-object p1, p0, Lmk0;->b:Lxj0;

    invoke-virtual {p1, v6, v7}, Lxj0;->n0(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 3
    invoke-virtual {p0, v4, v5}, Lmk0;->K(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmk0;->b:Lxj0;

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Lxj0;->V(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v0, v4

    .line 4
    invoke-virtual {p0, v0, v1}, Lmk0;->K(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmk0;->b:Lxj0;

    invoke-virtual {v0, v4, v5}, Lxj0;->V(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p1, p0, Lmk0;->b:Lxj0;

    invoke-virtual {p1, v4, v5}, Lxj0;->n0(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v6, Lxj0;

    invoke-direct {v6}, Lxj0;-><init>()V

    .line 7
    iget-object v0, p0, Lmk0;->b:Lxj0;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    .line 8
    iget-wide v7, v0, Lxj0;->c:J

    .line 9
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lxj0;->S(Lxj0;JJ)Lxj0;

    .line 10
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "\\n not found: limit="

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmk0;->b:Lxj0;

    .line 11
    iget-wide v2, v2, Lxj0;->c:J

    .line 12
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v6}, Lxj0;->j0()Lak0;

    move-result-object p1

    invoke-virtual {p1}, Lak0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
