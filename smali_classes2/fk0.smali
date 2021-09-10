.class public final Lfk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk0;


# instance fields
.field private final b:Lyj0;

.field private final c:Ljava/util/zip/Deflater;

.field private final d:Lbk0;

.field private e:Z

.field private final f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lqk0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lfk0;->f:Ljava/util/zip/CRC32;

    .line 3
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lfk0;->c:Ljava/util/zip/Deflater;

    .line 4
    sget v1, Lik0;->b:I

    .line 5
    new-instance v1, Llk0;

    invoke-direct {v1, p1}, Llk0;-><init>(Lqk0;)V

    .line 6
    iput-object v1, p0, Lfk0;->b:Lyj0;

    .line 7
    new-instance p1, Lbk0;

    invoke-direct {p1, v1, v0}, Lbk0;-><init>(Lyj0;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lfk0;->d:Lbk0;

    .line 8
    iget-object p1, v1, Llk0;->b:Lxj0;

    const/16 v0, 0x1f8b

    .line 9
    invoke-virtual {p1, v0}, Lxj0;->x0(I)Lxj0;

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Lxj0;->u0(I)Lxj0;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lxj0;->u0(I)Lxj0;

    .line 12
    invoke-virtual {p1, v0}, Lxj0;->w0(I)Lxj0;

    .line 13
    invoke-virtual {p1, v0}, Lxj0;->u0(I)Lxj0;

    .line 14
    invoke-virtual {p1, v0}, Lxj0;->u0(I)Lxj0;

    return-void
.end method


# virtual methods
.method public H(Lxj0;J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v2, p1, Lxj0;->b:Lnk0;

    move-wide v3, p2

    :goto_0
    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    .line 2
    iget v5, v2, Lnk0;->c:I

    iget v6, v2, Lnk0;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 3
    iget-object v5, p0, Lfk0;->f:Ljava/util/zip/CRC32;

    iget-object v7, v2, Lnk0;->a:[B

    iget v8, v2, Lnk0;->b:I

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v5, v6

    sub-long/2addr v3, v5

    .line 4
    iget-object v2, v2, Lnk0;->f:Lnk0;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lfk0;->d:Lbk0;

    invoke-virtual {v0, p1, p2, p3}, Lbk0;->H(Lxj0;J)V

    return-void

    .line 6
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

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfk0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfk0;->d:Lbk0;

    invoke-virtual {v1}, Lbk0;->o()V

    .line 3
    iget-object v1, p0, Lfk0;->b:Lyj0;

    iget-object v2, p0, Lfk0;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lyj0;->s(I)Lyj0;

    .line 4
    iget-object v1, p0, Lfk0;->b:Lyj0;

    iget-object v2, p0, Lfk0;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lyj0;->s(I)Lyj0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :goto_0
    :try_start_1
    iget-object v1, p0, Lfk0;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 6
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lfk0;->b:Lyj0;

    invoke-interface {v1}, Lqk0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lfk0;->e:Z

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    sget-object v1, Ltk0;->a:Ljava/nio/charset/Charset;

    .line 9
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfk0;->d:Lbk0;

    invoke-virtual {v0}, Lbk0;->flush()V

    return-void
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfk0;->b:Lyj0;

    invoke-interface {v0}, Lqk0;->timeout()Lsk0;

    move-result-object v0

    return-object v0
.end method
