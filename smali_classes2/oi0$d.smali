.class Loi0$d;
.super Loi0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final f:Ldh0;

.field private g:J

.field private h:Z

.field final synthetic i:Loi0;


# direct methods
.method constructor <init>(Loi0;Ldh0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Loi0$d;->i:Loi0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loi0$b;-><init>(Loi0;Loi0$a;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Loi0$d;->g:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Loi0$d;->h:Z

    .line 4
    iput-object p2, p0, Loi0$d;->f:Ldh0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Loi0$b;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Loi0$d;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lrh0;->m(Lrk0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Loi0$b;->j(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Loi0$b;->c:Z

    return-void
.end method

.method public read(Lxj0;J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 1
    iget-boolean v2, p0, Loi0$b;->c:Z

    if-nez v2, :cond_8

    .line 2
    iget-boolean v2, p0, Loi0$d;->h:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    iget-wide v5, p0, Loi0$d;->g:J

    const/4 v2, 0x0

    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    cmp-long v7, v5, v3

    if-nez v7, :cond_5

    :cond_1
    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    .line 4
    iget-object v5, p0, Loi0$d;->i:Loi0;

    iget-object v5, v5, Loi0;->c:Lzj0;

    invoke-interface {v5}, Lzj0;->O()Ljava/lang/String;

    .line 5
    :cond_2
    :try_start_0
    iget-object v5, p0, Loi0$d;->i:Loi0;

    iget-object v5, v5, Loi0;->c:Lzj0;

    invoke-interface {v5}, Lzj0;->f0()J

    move-result-wide v5

    iput-wide v5, p0, Loi0$d;->g:J

    .line 6
    iget-object v5, p0, Loi0$d;->i:Loi0;

    iget-object v5, v5, Loi0;->c:Lzj0;

    invoke-interface {v5}, Lzj0;->O()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-wide v6, p0, Loi0$d;->g:J

    cmp-long v8, v6, v0

    if-ltz v8, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    .line 8
    :cond_3
    iget-wide v5, p0, Loi0$d;->g:J

    cmp-long v7, v5, v0

    if-nez v7, :cond_4

    .line 9
    iput-boolean v2, p0, Loi0$d;->h:Z

    .line 10
    iget-object v0, p0, Loi0$d;->i:Loi0;

    iget-object v0, v0, Loi0;->a:Lgh0;

    invoke-virtual {v0}, Lgh0;->e()Lwg0;

    move-result-object v0

    iget-object v1, p0, Loi0$d;->f:Ldh0;

    iget-object v5, p0, Loi0$d;->i:Loi0;

    invoke-virtual {v5}, Loi0;->j()Lch0;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lii0;->d(Lwg0;Ldh0;Lch0;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Loi0$b;->j(ZLjava/io/IOException;)V

    .line 12
    :cond_4
    iget-boolean v0, p0, Loi0$d;->h:Z

    if-nez v0, :cond_5

    return-wide v3

    .line 13
    :cond_5
    iget-wide v0, p0, Loi0$d;->g:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Loi0$b;->read(Lxj0;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_6

    .line 14
    iget-wide v0, p0, Loi0$d;->g:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Loi0$d;->g:J

    return-wide p1

    .line 15
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v2, p1}, Loi0$b;->j(ZLjava/io/IOException;)V

    .line 17
    throw p1

    .line 18
    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Loi0$d;->g:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_9
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
.end method
