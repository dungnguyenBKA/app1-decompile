.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[B

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:[B

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    new-array v0, v2, [Ljava/lang/String;

    .line 2
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    const-string v0, "*"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    .line 4
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_c

    add-int v5, v4, v2

    .line 2
    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    .line 3
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_2
    add-int v10, v5, v9

    .line 4
    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v10, v5

    move/from16 v11, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    const/4 v14, 0x0

    goto :goto_4

    .line 5
    :cond_2
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    :goto_4
    add-int v15, v5, v13

    .line 6
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-eqz v9, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4

    goto :goto_5

    .line 7
    :cond_4
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_b

    .line 8
    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_a

    :goto_5
    if-gez v9, :cond_5

    goto :goto_7

    :cond_5
    if-lez v9, :cond_6

    goto :goto_8

    :cond_6
    sub-int v7, v6, v13

    .line 9
    aget-object v9, v1, v11

    array-length v9, v9

    sub-int/2addr v9, v12

    :goto_6
    add-int/2addr v11, v8

    .line 10
    array-length v12, v1

    if-ge v11, v12, :cond_7

    .line 11
    aget-object v12, v1, v11

    array-length v12, v12

    add-int/2addr v9, v12

    goto :goto_6

    :cond_7
    if-ge v9, v7, :cond_8

    :goto_7
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_8
    if-le v9, v7, :cond_9

    :goto_8
    add-int/lit8 v4, v10, 0x1

    goto :goto_0

    .line 12
    :cond_9
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lrh0;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_9

    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    const/4 v12, -0x1

    goto :goto_3

    :cond_b
    move v9, v14

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_9
    return-object v1
.end method

.method public static b()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lgk0;

    invoke-static {v0}, Lik0;->h(Ljava/io/InputStream;)Lrk0;

    move-result-object v0

    invoke-direct {v1, v0}, Lgk0;-><init>(Lrk0;)V

    invoke-static {v1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lzj0;->readInt()I

    move-result v1

    .line 4
    new-array v1, v1, [B

    .line 5
    invoke-interface {v0, v1}, Lzj0;->readFully([B)V

    .line 6
    invoke-interface {v0}, Lzj0;->readInt()I

    move-result v2

    .line 7
    new-array v2, v2, [B

    .line 8
    invoke-interface {v0, v2}, Lzj0;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_1
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 12
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 16
    invoke-static {v0}, Lrh0;->g(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "domain == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 6
    :try_start_1
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "Failed to read public suffix list"

    invoke-virtual {v5, v6, v7, v4}, Lmj0;->n(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 7
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 8
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p1

    .line 10
    :cond_1
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 11
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 12
    :cond_2
    :goto_3
    monitor-enter p0

    .line 13
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v1, :cond_12

    .line 14
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    array-length v1, v0

    new-array v4, v1, [[B

    const/4 v5, 0x0

    .line 16
    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 17
    aget-object v6, v0, v5

    sget-object v7, Lrh0;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    if-ge v5, v1, :cond_5

    .line 18
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v7, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move-object v7, v6

    :goto_6
    if-le v1, v2, :cond_7

    .line 19
    invoke-virtual {v4}, [[B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    const/4 v8, 0x0

    .line 20
    :goto_7
    array-length v9, v5

    sub-int/2addr v9, v2

    if-ge v8, v9, :cond_7

    .line 21
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v9, v5, v8

    .line 22
    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v9, v5, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    move-object v9, v6

    :goto_8
    if-eqz v9, :cond_9

    const/4 v5, 0x0

    :goto_9
    add-int/lit8 v8, v1, -0x1

    if-ge v5, v8, :cond_9

    .line 23
    iget-object v8, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    invoke-static {v8, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_9
    move-object v8, v6

    :goto_a
    if-eqz v8, :cond_a

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\."

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_a
    if-nez v7, :cond_b

    if-nez v9, :cond_b

    .line 26
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    goto :goto_d

    :cond_b
    if-eqz v7, :cond_c

    const-string v1, "\\."

    .line 27
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 28
    :cond_c
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_b
    if-eqz v9, :cond_d

    const-string v4, "\\."

    .line 29
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 30
    :cond_d
    sget-object v4, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    .line 31
    :goto_c
    array-length v5, v1

    array-length v7, v4

    if-le v5, v7, :cond_e

    goto :goto_d

    :cond_e
    move-object v1, v4

    .line 32
    :goto_d
    array-length v4, v0

    array-length v5, v1

    const/16 v7, 0x21

    if-ne v4, v5, :cond_f

    aget-object v4, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_f

    return-object v6

    .line 33
    :cond_f
    aget-object v4, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_10

    .line 34
    array-length v0, v0

    array-length v1, v1

    goto :goto_e

    .line 35
    :cond_10
    array-length v0, v0

    array-length v1, v1

    add-int/2addr v1, v2

    :goto_e
    sub-int/2addr v0, v1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\."

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 38
    :goto_f
    array-length v3, p1

    if-ge v0, v3, :cond_11

    .line 39
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 40
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_12
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10
.end method
