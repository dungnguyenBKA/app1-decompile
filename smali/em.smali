.class public Lem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem$c;
    }
.end annotation


# static fields
.field private static d:Z = true

.field private static e:Lem;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Z

.field private static final j:Ljava/util/concurrent/ExecutorService;

.field public static final synthetic k:I


# instance fields
.field private a:Ljava/io/FileOutputStream;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lem;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Log instance="

    .line 2
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lem;->e:Lem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-boolean v0, Lem;->d:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lem;->f()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lem;)Ljava/io/FileOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lem;->a:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic b(Lem;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lem;->a:Ljava/io/FileOutputStream;

    return-object p1
.end method

.method static synthetic c(Lem;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lem;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lem;Ljava/io/File;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lem;->b:Ljava/io/File;

    return-object p1
.end method

.method static synthetic e()Lem;
    .locals 1

    .line 1
    invoke-static {}, Lem;->k()Lem;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lem;->b:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lem;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lem;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lem;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lem;->m()I

    move-result v0

    sput v0, Lem;->h:I

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lem;->b:Ljava/io/File;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lem;->c:Ljava/lang/StringBuilder;

    .line 6
    sget-object v0, Lem;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lem$a;

    invoke-direct {v1, p0}, Lem$a;-><init>(Lem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lem;->b:Ljava/io/File;

    .line 9
    sget-object v0, Lem;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lem$b;

    invoke-direct {v1, p0}, Lem$b;-><init>(Lem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lem;->d:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, p0, p1}, Lem;->o(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0, p0, p1}, Lem;->o(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    .line 3
    invoke-static {p2, p0, p1}, Lem;->o(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j()V
    .locals 4

    .line 1
    invoke-static {}, Lem;->k()Lem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lem;->c:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lem;->a:Ljava/io/FileOutputStream;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lem;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lem$c;

    invoke-direct {v3, v1}, Lem$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    const-class v1, Lem;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lem;->c:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static declared-synchronized k()Lem;
    .locals 5

    const-class v0, Lem;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lem;->e:Lem;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lem;

    invoke-direct {v1}, Lem;-><init>()V

    sput-object v1, Lem;->e:Lem;

    const/4 v1, 0x6

    const-string v2, ""

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log instance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lem;->e:Lem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v1, Lem;->e:Lem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static l()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lem;->h:I

    const-string v2, ".log"

    invoke-static {v0, v1, v2}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lem;->h:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lem;->h:I

    .line 3
    rem-int/lit8 v1, v1, 0x2

    sput v1, Lem;->h:I

    return-object v0
.end method

.method private m()I
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lem;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lem;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v5

    .line 4
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lem;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lem;->g:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    :cond_1
    cmp-long v4, v0, v5

    if-gez v4, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0, p0, p1}, Lem;->o(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static o(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-static {}, Lem;->k()Lem;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 5
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%03d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 11
    :goto_0
    :try_start_1
    sget-boolean v3, Lem;->i:Z

    if-eqz v3, :cond_0

    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_0
    :goto_1
    sget-boolean v3, Lem;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lem;->c:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 15
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    if-gt v3, v4, :cond_2

    mul-int/lit16 v4, v3, 0x400

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v5, v3, 0x400

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 17
    :cond_1
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    invoke-static {}, Lem;->k()Lem;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    iget-object v3, p0, Lem;->b:Ljava/io/File;

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const v5, 0x61a80

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 22
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lem;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lem;->b:Ljava/io/File;

    .line 23
    sget-object v3, Lem;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lfm;

    invoke-direct {v4, p0}, Lfm;-><init>(Lem;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_3
    const-class v3, Lem;

    monitor-enter v3

    .line 25
    :try_start_2
    iget-object p0, v0, Lem;->c:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--> "

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    iget-object p0, v0, Lem;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0x4e20

    .line 29
    invoke-static {}, Lem;->j()V

    return v1

    :catchall_0
    move-exception p0

    .line 30
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 31
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lem;->i:Z

    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lem;->f:Ljava/lang/String;

    .line 2
    sput-object p1, Lem;->g:Ljava/lang/String;

    .line 3
    invoke-static {}, Lem;->k()Lem;

    move-result-object p0

    .line 4
    sget-boolean p1, Lem;->d:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lem;->f()V

    :cond_0
    return-void
.end method
