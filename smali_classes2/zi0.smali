.class final Lzi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi0$b;,
        Lzi0$a;
    }
.end annotation


# static fields
.field static final f:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lzj0;

.field private final c:Lzi0$a;

.field private final d:Z

.field final e:Lsi0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lti0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzi0;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lzj0;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzi0;->b:Lzj0;

    .line 3
    iput-boolean p2, p0, Lzi0;->d:Z

    .line 4
    new-instance p2, Lzi0$a;

    invoke-direct {p2, p1}, Lzi0$a;-><init>(Lzj0;)V

    iput-object p2, p0, Lzi0;->c:Lzi0$a;

    .line 5
    new-instance p1, Lsi0$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lsi0$a;-><init>(ILrk0;)V

    iput-object p1, p0, Lzi0;->e:Lsi0$a;

    return-void
.end method

.method private S(Lzi0$b;II)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v0, :cond_6

    if-nez p3, :cond_5

    .line 1
    iget-object p3, p0, Lzi0;->b:Lzj0;

    invoke-interface {p3}, Lzj0;->readInt()I

    move-result p3

    .line 2
    iget-object v4, p0, Lzi0;->b:Lzj0;

    invoke-interface {v4}, Lzj0;->readInt()I

    move-result v4

    sub-int/2addr p2, v0

    .line 3
    invoke-static {v4}, Lqi0;->a(I)Lqi0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    sget-object v0, Lak0;->f:Lak0;

    if-lez p2, :cond_0

    .line 5
    iget-object v0, p0, Lzi0;->b:Lzj0;

    int-to-long v4, p2

    invoke-interface {v0, v4, v5}, Lzj0;->f(J)Lak0;

    move-result-object v0

    .line 6
    :cond_0
    check-cast p1, Lvi0$l;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Lak0;->m()I

    .line 9
    iget-object p2, p1, Lvi0$l;->d:Lvi0;

    monitor-enter p2

    .line 10
    :try_start_0
    iget-object v0, p1, Lvi0$l;->d:Lvi0;

    iget-object v0, v0, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lvi0$l;->d:Lvi0;

    iget-object v1, v1, Lvi0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Laj0;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj0;

    .line 11
    iget-object v1, p1, Lvi0$l;->d:Lvi0;

    invoke-static {v1, v3}, Lvi0;->i0(Lvi0;Z)Z

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    array-length p2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v1, v0, v2

    .line 14
    iget v3, v1, Laj0;->c:I

    if-le v3, p3, :cond_2

    .line 15
    invoke-virtual {v1}, Laj0;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    sget-object v3, Lqi0;->g:Lqi0;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iget-object v4, v1, Laj0;->k:Lqi0;

    if-nez v4, :cond_1

    .line 19
    iput-object v3, v1, Laj0;->k:Lqi0;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_1
    monitor-exit v1

    .line 22
    iget-object v3, p1, Lvi0$l;->d:Lvi0;

    .line 23
    iget v1, v1, Laj0;->c:I

    .line 24
    invoke-virtual {v3, v1}, Lvi0;->y0(I)Laj0;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v1

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v3, [Ljava/lang/Object;

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_5
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {p1, p2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_6
    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p3, v3, [Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private V(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lri0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzi0;->c:Lzi0$a;

    iput p1, v0, Lzi0$a;->f:I

    iput p1, v0, Lzi0$a;->c:I

    .line 2
    iput-short p2, v0, Lzi0$a;->g:S

    .line 3
    iput-byte p3, v0, Lzi0$a;->d:B

    .line 4
    iput p4, v0, Lzi0$a;->e:I

    .line 5
    iget-object p1, p0, Lzi0;->e:Lsi0$a;

    invoke-virtual {p1}, Lsi0$a;->h()V

    .line 6
    iget-object p1, p0, Lzi0;->e:Lsi0$a;

    invoke-virtual {p1}, Lsi0$a;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static b0(Lzj0;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lzj0;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Lzj0;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Lzj0;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private i0(Lzi0$b;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_4

    .line 1
    iget-object p2, p0, Lzi0;->b:Lzj0;

    invoke-interface {p2}, Lzj0;->readInt()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    .line 2
    check-cast p1, Lvi0$l;

    if-nez p3, :cond_0

    .line 3
    iget-object p2, p1, Lvi0$l;->d:Lvi0;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p1, p1, Lvi0$l;->d:Lvi0;

    iget-wide v0, p1, Lvi0;->s:J

    add-long/2addr v0, v3

    iput-wide v0, p1, Lvi0;->s:J

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    iget-object p1, p1, Lvi0$l;->d:Lvi0;

    invoke-virtual {p1, p3}, Lvi0;->o0(I)Laj0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1
    iget-wide p2, p1, Laj0;->b:J

    add-long/2addr p2, v3

    iput-wide p2, p1, Laj0;->b:J

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_4
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method static j(IBS)I
    .locals 1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public L(Lzi0$b;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lzi0;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v3, p1}, Lzi0;->o(ZLzi0$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 3
    invoke-static {v0, p1}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    .line 4
    :cond_1
    iget-object p1, p0, Lzi0;->b:Lzj0;

    sget-object v0, Lti0;->a:Lak0;

    invoke-virtual {v0}, Lak0;->m()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v4, v5}, Lzj0;->f(J)Lak0;

    move-result-object p1

    .line 5
    sget-object v4, Lzi0;->f:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lak0;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "<< CONNECTION %s"

    invoke-static {v6, v5}, Lrh0;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {v0, p1}, Lak0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lak0;->q()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzi0;->b:Lzj0;

    invoke-interface {v0}, Lrk0;->close()V

    return-void
.end method

.method public o(ZLzi0$b;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v1, Lzi0;->b:Lzj0;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lzj0;->c0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v3, v1, Lzi0;->b:Lzj0;

    invoke-static {v3}, Lzi0;->b0(Lzj0;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_32

    const/16 v6, 0x4000

    if-gt v3, v6, :cond_32

    .line 3
    iget-object v7, v1, Lzi0;->b:Lzj0;

    invoke-interface {v7}, Lzj0;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x4

    if-eqz p1, :cond_1

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected a SETTINGS frame but was %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 5
    :cond_1
    :goto_0
    iget-object v9, v1, Lzi0;->b:Lzj0;

    invoke-interface {v9}, Lzj0;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 6
    iget-object v10, v1, Lzi0;->b:Lzj0;

    invoke-interface {v10}, Lzj0;->readInt()I

    move-result v10

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    .line 7
    sget-object v12, Lzi0;->f:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v4, v10, v3, v7, v9}, Lti0;->a(ZIIBB)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v15, 0x2

    packed-switch v7, :pswitch_data_0

    .line 8
    iget-object v0, v1, Lzi0;->b:Lzj0;

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Lzj0;->skip(J)V

    goto/16 :goto_a

    .line 9
    :pswitch_0
    invoke-direct {v1, v0, v3, v10}, Lzi0;->i0(Lzi0$b;II)V

    goto/16 :goto_a

    .line 10
    :pswitch_1
    invoke-direct {v1, v0, v3, v10}, Lzi0;->S(Lzi0$b;II)V

    goto/16 :goto_a

    :pswitch_2
    const/16 v6, 0x8

    if-ne v3, v6, :cond_9

    if-nez v10, :cond_8

    .line 11
    iget-object v3, v1, Lzi0;->b:Lzj0;

    invoke-interface {v3}, Lzj0;->readInt()I

    move-result v3

    .line 12
    iget-object v5, v1, Lzi0;->b:Lzj0;

    invoke-interface {v5}, Lzj0;->readInt()I

    move-result v5

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 13
    :cond_3
    check-cast v0, Lvi0$l;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 15
    iget-object v2, v0, Lvi0$l;->d:Lvi0;

    monitor-enter v2

    if-ne v3, v4, :cond_4

    .line 16
    :try_start_1
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v0}, Lvi0;->L(Lvi0;)J

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    if-ne v3, v15, :cond_5

    .line 17
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v0}, Lvi0;->l0(Lvi0;)J

    goto :goto_1

    :cond_5
    if-ne v3, v12, :cond_6

    .line 18
    iget-object v3, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v3}, Lvi0;->m0(Lvi0;)J

    .line 19
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 20
    :cond_6
    :goto_1
    monitor-exit v2

    goto/16 :goto_a

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 21
    :cond_7
    :try_start_2
    iget-object v2, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v2}, Lvi0;->k0(Lvi0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v6, Lvi0$k;

    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-direct {v6, v0, v4, v3, v5}, Lvi0$k;-><init>(Lvi0;ZII)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    :cond_8
    const-string v0, "TYPE_PING streamId != 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v0, v2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_9
    const-string v0, "TYPE_PING length != 8: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_3
    if-eqz v10, :cond_b

    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_a

    .line 24
    iget-object v2, v1, Lzi0;->b:Lzj0;

    invoke-interface {v2}, Lzj0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 25
    :cond_a
    iget-object v5, v1, Lzi0;->b:Lzj0;

    invoke-interface {v5}, Lzj0;->readInt()I

    move-result v5

    and-int/2addr v5, v11

    add-int/lit8 v3, v3, -0x4

    .line 26
    invoke-static {v3, v9, v2}, Lzi0;->j(IBS)I

    move-result v3

    .line 27
    invoke-direct {v1, v3, v2, v9, v10}, Lzi0;->V(ISBI)Ljava/util/List;

    move-result-object v2

    .line 28
    check-cast v0, Lvi0$l;

    .line 29
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0, v5, v2}, Lvi0;->v0(ILjava/util/List;)V

    goto/16 :goto_a

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 30
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_4
    if-nez v10, :cond_18

    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_d

    if-nez v3, :cond_c

    .line 31
    check-cast v0, Lvi0$l;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_c
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 33
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 34
    :cond_d
    rem-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_17

    .line 35
    new-instance v7, Lej0;

    invoke-direct {v7}, Lej0;-><init>()V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v3, :cond_16

    .line 36
    iget-object v10, v1, Lzi0;->b:Lzj0;

    invoke-interface {v10}, Lzj0;->readShort()S

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    .line 37
    iget-object v11, v1, Lzi0;->b:Lzj0;

    invoke-interface {v11}, Lzj0;->readInt()I

    move-result v11

    if-eq v10, v15, :cond_13

    if-eq v10, v12, :cond_12

    if-eq v10, v8, :cond_10

    if-eq v10, v13, :cond_e

    goto :goto_4

    :cond_e
    if-lt v11, v6, :cond_f

    const v14, 0xffffff

    if-gt v11, v14, :cond_f

    goto :goto_4

    :cond_f
    new-array v0, v4, [Ljava/lang/Object;

    .line 38
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_10
    const/4 v10, 0x7

    if-ltz v11, :cond_11

    goto :goto_4

    :cond_11
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 39
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_12
    const/4 v10, 0x4

    goto :goto_4

    :cond_13
    if-eqz v11, :cond_15

    if-ne v11, v4, :cond_14

    goto :goto_4

    :cond_14
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 40
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    .line 41
    :cond_15
    :goto_4
    invoke-virtual {v7, v10, v11}, Lej0;->i(II)Lej0;

    add-int/lit8 v9, v9, 0x6

    goto :goto_3

    :cond_16
    const/16 v20, 0x0

    .line 42
    check-cast v0, Lvi0$l;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :try_start_3
    iget-object v3, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v3}, Lvi0;->k0(Lvi0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v5, Lxi0;

    const-string v18, "OkHttp %s ACK Settings"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v8, v0, Lvi0$l;->d:Lvi0;

    iget-object v8, v8, Lvi0;->e:Ljava/lang/String;

    aput-object v8, v6, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lxi0;-><init>(Lvi0$l;Ljava/lang/String;[Ljava/lang/Object;ZLej0;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :cond_17
    new-array v0, v4, [Ljava/lang/Object;

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_18
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    .line 46
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_5
    if-ne v3, v8, :cond_1d

    if-eqz v10, :cond_1c

    .line 47
    iget-object v3, v1, Lzi0;->b:Lzj0;

    invoke-interface {v3}, Lzj0;->readInt()I

    move-result v3

    .line 48
    invoke-static {v3}, Lqi0;->a(I)Lqi0;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 49
    check-cast v0, Lvi0$l;

    .line 50
    iget-object v2, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v2, v10}, Lvi0;->x0(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 51
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0, v10, v6}, Lvi0;->w0(ILqi0;)V

    goto/16 :goto_a

    .line 52
    :cond_19
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0, v10}, Lvi0;->y0(I)Laj0;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 53
    monitor-enter v2

    .line 54
    :try_start_4
    iget-object v0, v2, Laj0;->k:Lqi0;

    if-nez v0, :cond_1a

    .line 55
    iput-object v6, v2, Laj0;->k:Lqi0;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :cond_1a
    monitor-exit v2

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1b
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_1c
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    invoke-static {v0, v2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_1d
    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v4, v4, [Ljava/lang/Object;

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_6
    if-ne v3, v13, :cond_1f

    if-eqz v10, :cond_1e

    .line 61
    iget-object v2, v1, Lzi0;->b:Lzj0;

    invoke-interface {v2}, Lzj0;->readInt()I

    .line 62
    iget-object v2, v1, Lzi0;->b:Lzj0;

    invoke-interface {v2}, Lzj0;->readByte()B

    .line 63
    check-cast v0, Lvi0$l;

    .line 64
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_1e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 65
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_1f
    new-array v0, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_7
    if-eqz v10, :cond_28

    and-int/lit8 v5, v9, 0x1

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_5

    :cond_20
    const/4 v5, 0x0

    :goto_5
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_21

    .line 67
    iget-object v6, v1, Lzi0;->b:Lzj0;

    invoke-interface {v6}, Lzj0;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    goto :goto_6

    :cond_21
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v7, v9, 0x20

    if-eqz v7, :cond_22

    .line 68
    iget-object v7, v1, Lzi0;->b:Lzj0;

    invoke-interface {v7}, Lzj0;->readInt()I

    .line 69
    iget-object v7, v1, Lzi0;->b:Lzj0;

    invoke-interface {v7}, Lzj0;->readByte()B

    .line 70
    move-object v7, v0

    check-cast v7, Lvi0$l;

    .line 71
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    .line 72
    :cond_22
    invoke-static {v3, v9, v6}, Lzi0;->j(IBS)I

    move-result v3

    .line 73
    invoke-direct {v1, v3, v6, v9, v10}, Lzi0;->V(ISBI)Ljava/util/List;

    move-result-object v3

    .line 74
    check-cast v0, Lvi0$l;

    .line 75
    iget-object v6, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v6, v10}, Lvi0;->x0(I)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 76
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0, v10, v3, v5}, Lvi0;->u0(ILjava/util/List;Z)V

    goto/16 :goto_a

    .line 77
    :cond_23
    iget-object v6, v0, Lvi0$l;->d:Lvi0;

    monitor-enter v6

    .line 78
    :try_start_5
    iget-object v7, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v7, v10}, Lvi0;->o0(I)Laj0;

    move-result-object v7

    if-nez v7, :cond_27

    .line 79
    iget-object v7, v0, Lvi0$l;->d:Lvi0;

    invoke-static {v7}, Lvi0;->b0(Lvi0;)Z

    move-result v7

    if-eqz v7, :cond_24

    monitor-exit v6

    goto/16 :goto_a

    .line 80
    :cond_24
    iget-object v7, v0, Lvi0$l;->d:Lvi0;

    iget v8, v7, Lvi0;->f:I

    if-gt v10, v8, :cond_25

    monitor-exit v6

    goto/16 :goto_a

    .line 81
    :cond_25
    rem-int/lit8 v8, v10, 0x2

    iget v7, v7, Lvi0;->g:I

    rem-int/2addr v7, v15

    if-ne v8, v7, :cond_26

    monitor-exit v6

    goto/16 :goto_a

    .line 82
    :cond_26
    invoke-static {v3}, Lrh0;->A(Ljava/util/List;)Lch0;

    move-result-object v17

    .line 83
    new-instance v3, Laj0;

    iget-object v14, v0, Lvi0$l;->d:Lvi0;

    const/4 v7, 0x0

    move-object v12, v3

    move v13, v10

    const/4 v8, 0x2

    move v15, v7

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Laj0;-><init>(ILvi0;ZZLch0;)V

    .line 84
    iget-object v5, v0, Lvi0$l;->d:Lvi0;

    iput v10, v5, Lvi0;->f:I

    .line 85
    iget-object v5, v5, Lvi0;->d:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lvi0;->j0()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v7, Lwi0;

    const-string v9, "OkHttp %s stream %d"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lvi0$l;->d:Lvi0;

    iget-object v11, v11, Lvi0;->e:Ljava/lang/String;

    aput-object v11, v8, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-direct {v7, v0, v9, v8, v3}, Lwi0;-><init>(Lvi0$l;Ljava/lang/String;[Ljava/lang/Object;Laj0;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    monitor-exit v6

    goto/16 :goto_a

    .line 88
    :cond_27
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 89
    invoke-virtual {v7, v3}, Laj0;->m(Ljava/util/List;)V

    if-eqz v5, :cond_31

    .line 90
    invoke-virtual {v7}, Laj0;->l()V

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    .line 91
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_28
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v2}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_8
    if-eqz v10, :cond_30

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_7

    :cond_29
    const/4 v6, 0x0

    :goto_7
    and-int/lit8 v7, v9, 0x20

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_8

    :cond_2a
    const/4 v7, 0x0

    :goto_8
    if-nez v7, :cond_2f

    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_2b

    .line 93
    iget-object v2, v1, Lzi0;->b:Lzj0;

    invoke-interface {v2}, Lzj0;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 94
    :cond_2b
    invoke-static {v3, v9, v2}, Lzi0;->j(IBS)I

    move-result v3

    .line 95
    iget-object v5, v1, Lzi0;->b:Lzj0;

    check-cast v0, Lvi0$l;

    .line 96
    iget-object v7, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v7, v10}, Lvi0;->x0(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 97
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v0, v10, v5, v3, v6}, Lvi0;->s0(ILzj0;IZ)V

    goto :goto_9

    .line 98
    :cond_2c
    iget-object v7, v0, Lvi0$l;->d:Lvi0;

    invoke-virtual {v7, v10}, Lvi0;->o0(I)Laj0;

    move-result-object v7

    if-nez v7, :cond_2d

    .line 99
    iget-object v6, v0, Lvi0$l;->d:Lvi0;

    sget-object v7, Lqi0;->d:Lqi0;

    invoke-virtual {v6, v10, v7}, Lvi0;->F0(ILqi0;)V

    .line 100
    iget-object v0, v0, Lvi0$l;->d:Lvi0;

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Lvi0;->C0(J)V

    .line 101
    invoke-interface {v5, v6, v7}, Lzj0;->skip(J)V

    goto :goto_9

    .line 102
    :cond_2d
    invoke-virtual {v7, v5, v3}, Laj0;->k(Lzj0;I)V

    if-eqz v6, :cond_2e

    .line 103
    invoke-virtual {v7}, Laj0;->l()V

    .line 104
    :cond_2e
    :goto_9
    iget-object v0, v1, Lzi0;->b:Lzj0;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lzj0;->skip(J)V

    goto :goto_a

    :cond_2f
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 105
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_30
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 106
    invoke-static {v2, v0}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :catch_0
    :cond_31
    :goto_a
    return v4

    :cond_32
    const-string v0, "FRAME_SIZE_ERROR: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Lti0;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :catch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
