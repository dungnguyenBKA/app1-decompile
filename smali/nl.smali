.class public final Lnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl$c;,
        Lnl$b;,
        Lnl$d;
    }
.end annotation


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private final f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnl$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v0, Lnl;->h:J

    .line 3
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lnl;->j:Ljava/util/LinkedHashMap;

    .line 4
    iput-wide v2, v0, Lnl;->l:J

    .line 5
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lnl;->m:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v2, Lnl$a;

    invoke-direct {v2, p0}, Lnl$a;-><init>(Lnl;)V

    iput-object v2, v0, Lnl;->n:Ljava/util/concurrent/Callable;

    .line 7
    iput-object v1, v0, Lnl;->b:Ljava/io/File;

    move/from16 v2, p2

    .line 8
    iput v2, v0, Lnl;->e:I

    .line 9
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lnl;->c:Ljava/io/File;

    .line 10
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lnl;->d:Ljava/io/File;

    move/from16 v1, p3

    .line 11
    iput v1, v0, Lnl;->g:I

    move-wide/from16 v1, p4

    .line 12
    iput-wide v1, v0, Lnl;->f:J

    return-void
.end method

.method private A0()V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lnl;->h:J

    iget-wide v2, p0, Lnl;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnl;->z0(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B0(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must not contain spaces or newlines: \""

    const-string v2, "\""

    invoke-static {v1, p1, v2}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static L(Lnl;Lnl$b;Z)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lnl$b;->b(Lnl$b;)Lnl$c;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v1

    if-ne v1, p1, :cond_9

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 4
    invoke-static {v0}, Lnl$c;->e(Lnl$c;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lnl;->g:I

    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lnl$c;->k(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnl$b;->a()V

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "edit didn\'t create file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_1
    iget p1, p0, Lnl;->g:I

    if-ge v1, p1, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Lnl$c;->k(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lnl$c;->j(I)Ljava/io/File;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 14
    invoke-static {v0}, Lnl$c;->a(Lnl$c;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 16
    invoke-static {v0}, Lnl$c;->a(Lnl$c;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 17
    iget-wide v7, p0, Lnl;->h:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lnl;->h:J

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {p1}, Lnl;->o0(Ljava/io/File;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_4
    iget p1, p0, Lnl;->k:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lnl;->k:I

    const/4 p1, 0x0

    .line 20
    invoke-static {v0, p1}, Lnl$c;->h(Lnl$c;Lnl$b;)Lnl$b;

    .line 21
    invoke-static {v0}, Lnl$c;->e(Lnl$c;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_5

    .line 22
    invoke-static {v0, v1}, Lnl$c;->f(Lnl$c;Z)Z

    .line 23
    iget-object p1, p0, Lnl;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnl$c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 24
    iget-wide p1, p0, Lnl;->l:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lnl;->l:J

    invoke-static {v0, p1, p2}, Lnl$c;->d(Lnl$c;J)J

    goto :goto_3

    .line 25
    :cond_5
    iget-object p1, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lnl;->i:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    :cond_6
    :goto_3
    iget-wide p1, p0, Lnl;->h:J

    iget-wide v0, p0, Lnl;->f:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    invoke-direct {p0}, Lnl;->s0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 28
    :cond_7
    iget-object p1, p0, Lnl;->m:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lnl;->n:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_8
    monitor-exit p0

    return-void

    .line 30
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method static synthetic S(Lnl;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lnl;->s0()Z

    move-result p0

    return p0
.end method

.method static synthetic V(Lnl;)I
    .locals 0

    .line 1
    iget p0, p0, Lnl;->g:I

    return p0
.end method

.method static synthetic b0(Lnl;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lnl;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic i0(Lnl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnl;->y0()V

    return-void
.end method

.method static synthetic j(Lnl;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lnl;->i:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic j0(Lnl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lnl;->k:I

    return p1
.end method

.method private k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l0(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static n0(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v2}, Lnl;->n0(Ljava/io/File;)V

    .line 5
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic o(Lnl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnl;->A0()V

    return-void
.end method

.method private static o0(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private s0()Z
    .locals 2

    .line 1
    iget v0, p0, Lnl;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t0(Ljava/io/File;IIJ)Lnl;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    if-lez p2, :cond_1

    .line 1
    new-instance v0, Lnl;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lnl;-><init>(Ljava/io/File;IIJ)V

    .line 2
    iget-object v1, v0, Lnl;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-direct {v0}, Lnl;->w0()V

    .line 4
    invoke-direct {v0}, Lnl;->u0()V

    .line 5
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lnl;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lnl;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    invoke-virtual {v0}, Lnl;->close()V

    .line 7
    iget-object v0, v0, Lnl;->b:Ljava/io/File;

    invoke-static {v0}, Lnl;->n0(Ljava/io/File;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 9
    new-instance v0, Lnl;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lnl;-><init>(Ljava/io/File;IIJ)V

    .line 10
    invoke-direct {v0}, Lnl;->y0()V

    return-object v0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private u0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lnl;->d:Ljava/io/File;

    invoke-static {v0}, Lnl;->o0(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl$c;

    .line 4
    invoke-static {v1}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    iget v2, p0, Lnl;->g:I

    if-ge v3, v2, :cond_0

    .line 6
    iget-wide v4, p0, Lnl;->h:J

    invoke-static {v1}, Lnl$c;->a(Lnl$c;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnl;->h:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lnl$c;->h(Lnl$c;Lnl$b;)Lnl$b;

    .line 8
    :goto_2
    iget v2, p0, Lnl;->g:I

    if-ge v3, v2, :cond_2

    .line 9
    invoke-virtual {v1, v3}, Lnl$c;->j(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lnl;->o0(Ljava/io/File;)V

    .line 10
    invoke-virtual {v1, v3}, Lnl$c;->k(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lnl;->o0(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static v0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_0

    add-int/2addr p0, v2

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-char v1, v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private w0()V
    .locals 9

    const-string v0, ", "

    .line 1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lnl;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 2
    :try_start_0
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 8
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lnl;->e:I

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lnl;->g:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 12
    :goto_0
    :try_start_1
    invoke-static {v1}, Lnl;->v0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnl;->x0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :catch_0
    invoke-static {v1}, Lnl;->l0(Ljava/io/Closeable;)V

    return-void

    .line 14
    :cond_0
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v1}, Lnl;->l0(Ljava/io/Closeable;)V

    .line 16
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private x0(Ljava/lang/String;)V
    .locals 9

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_7

    const/4 v1, 0x1

    .line 3
    aget-object v4, v0, v1

    const/4 v5, 0x0

    .line 4
    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 5
    iget-object p1, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    iget-object v6, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnl$c;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 7
    new-instance v6, Lnl$c;

    invoke-direct {v6, p0, v4, v7}, Lnl$c;-><init>(Lnl;Ljava/lang/String;Lnl$a;)V

    .line 8
    iget-object v8, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    aget-object v4, v0, v5

    const-string v8, "CLEAN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    array-length v4, v0

    iget v8, p0, Lnl;->g:I

    add-int/2addr v8, v3

    if-ne v4, v8, :cond_4

    .line 10
    invoke-static {v6, v1}, Lnl$c;->f(Lnl$c;Z)Z

    .line 11
    invoke-static {v6, v7}, Lnl$c;->h(Lnl$c;Lnl$b;)Lnl$b;

    .line 12
    array-length p1, v0

    .line 13
    array-length v1, v0

    if-gt v3, p1, :cond_3

    if-gt v3, v1, :cond_2

    sub-int/2addr p1, v3

    sub-int/2addr v1, v3

    .line 14
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 16
    invoke-static {v0, v3, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-static {v6, p1}, Lnl$c;->i(Lnl$c;[Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 20
    :cond_4
    aget-object v1, v0, v5

    const-string v4, "DIRTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, v0

    if-ne v1, v3, :cond_5

    .line 21
    new-instance p1, Lnl$b;

    invoke-direct {p1, p0, v6, v7}, Lnl$b;-><init>(Lnl;Lnl$c;Lnl$a;)V

    invoke-static {v6, p1}, Lnl$c;->h(Lnl$c;Lnl$b;)Lnl$b;

    goto :goto_0

    .line 22
    :cond_5
    aget-object v1, v0, v5

    const-string v4, "READ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v0, v0

    if-ne v0, v3, :cond_6

    :goto_0
    return-void

    .line 23
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized y0()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 3
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lnl;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const-string v1, "libcore.io.DiskLruCache"

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lnl;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lnl;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl$c;

    .line 14
    invoke-static {v3}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnl$c;->b(Lnl$c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnl$c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 18
    iget-object v0, p0, Lnl;->d:Ljava/io/File;

    iget-object v1, p0, Lnl;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 19
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v3, p0, Lnl;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lnl;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl$c;

    .line 4
    invoke-static {v1}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v1}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v1

    .line 6
    iget-object v2, v1, Lnl$b;->c:Lnl;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lnl;->L(Lnl;Lnl$b;Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lnl;->A0()V

    .line 8
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnl;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnl;->k0()V

    .line 2
    invoke-direct {p0}, Lnl;->A0()V

    .line 3
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnl;->close()V

    .line 2
    iget-object v0, p0, Lnl;->b:Ljava/io/File;

    invoke-static {v0}, Lnl;->n0(Ljava/io/File;)V

    return-void
.end method

.method public p0(Ljava/lang/String;)Lnl$b;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lnl;->k0()V

    .line 3
    invoke-direct {p0, p1}, Lnl;->B0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lnl$c;

    invoke-direct {v0, p0, p1, v1}, Lnl$c;-><init>(Lnl;Ljava/lang/String;Lnl$a;)V

    .line 6
    iget-object v2, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 8
    monitor-exit p0

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Lnl$b;

    invoke-direct {v2, p0, v0, v1}, Lnl$b;-><init>(Lnl;Lnl$c;Lnl$a;)V

    .line 10
    invoke-static {v0, v2}, Lnl$c;->h(Lnl$c;Lnl$b;)Lnl$b;

    .line 11
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lnl;->i:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    move-object v1, v2

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q0(Ljava/lang/String;)Lnl$d;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnl;->k0()V

    .line 2
    invoke-direct {p0, p1}, Lnl;->B0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {v0}, Lnl$c;->e(Lnl$c;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 6
    monitor-exit p0

    return-object v1

    .line 7
    :cond_1
    :try_start_2
    iget v2, p0, Lnl;->g:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 8
    :goto_0
    :try_start_3
    iget v3, p0, Lnl;->g:I

    if-ge v2, v3, :cond_2

    .line 9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lnl$c;->j(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v8, v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :try_start_4
    iget v1, p0, Lnl;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnl;->k:I

    .line 11
    iget-object v1, p0, Lnl;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12
    invoke-direct {p0}, Lnl;->s0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lnl;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lnl;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 14
    :cond_3
    new-instance v1, Lnl$d;

    invoke-static {v0}, Lnl$c;->c(Lnl$c;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lnl$d;-><init>(Lnl;Ljava/lang/String;J[Ljava/io/InputStream;Lnl$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 15
    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized z0(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnl;->k0()V

    .line 2
    invoke-direct {p0, p1}, Lnl;->B0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-static {v0}, Lnl$c;->g(Lnl$c;)Lnl$b;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    :goto_0
    iget v2, p0, Lnl;->g:I

    if-ge v1, v2, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Lnl$c;->j(I)Ljava/io/File;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_1
    iget-wide v2, p0, Lnl;->h:J

    invoke-static {v0}, Lnl$c;->a(Lnl$c;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lnl;->h:J

    .line 10
    invoke-static {v0}, Lnl$c;->a(Lnl$c;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget v0, p0, Lnl;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnl;->k:I

    .line 12
    iget-object v0, p0, Lnl;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 13
    iget-object v0, p0, Lnl;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lnl;->s0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lnl;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lnl;->n:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_4
    monitor-exit p0

    return v1

    .line 17
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
