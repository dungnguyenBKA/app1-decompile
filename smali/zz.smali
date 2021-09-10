.class Lzz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final t:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln00;

.field private final c:Lj00;

.field private final d:Le10;

.field private final e:Ltz;

.field private final f:Lt00;

.field private final g:Lc30;

.field private final h:Lmz;

.field private final i:Lj10$b;

.field private final j:Lj10;

.field private final k:Lzy;

.field private final l:Ljava/lang/String;

.field private final m:Ldz;

.field private final n:Lc10;

.field private o:Lm00;

.field final p:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final q:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final r:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lxz;->a()Ljava/io/FilenameFilter;

    move-result-object v0

    sput-object v0, Lzz;->t:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ltz;Lt00;Ln00;Lc30;Lj00;Lmz;Le10;Lj10;Lj10$b;Lc10;Lzy;Ldz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    iput-object v0, p0, Lzz;->p:Llw;

    .line 3
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    iput-object v0, p0, Lzz;->q:Llw;

    .line 4
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    iput-object v0, p0, Lzz;->r:Llw;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzz;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lzz;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lzz;->e:Ltz;

    .line 8
    iput-object p3, p0, Lzz;->f:Lt00;

    .line 9
    iput-object p4, p0, Lzz;->b:Ln00;

    .line 10
    iput-object p5, p0, Lzz;->g:Lc30;

    .line 11
    iput-object p6, p0, Lzz;->c:Lj00;

    .line 12
    iput-object p7, p0, Lzz;->h:Lmz;

    .line 13
    iput-object p8, p0, Lzz;->d:Le10;

    .line 14
    iput-object p9, p0, Lzz;->j:Lj10;

    .line 15
    iput-object p10, p0, Lzz;->i:Lj10$b;

    .line 16
    iput-object p12, p0, Lzz;->k:Lzy;

    .line 17
    iget-object p1, p7, Lmz;->g:Lb40;

    invoke-virtual {p1}, Lb40;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzz;->l:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lzz;->m:Ldz;

    .line 19
    iput-object p11, p0, Lzz;->n:Lc10;

    return-void
.end method

.method static synthetic a(Lzz;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lzz;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lzz;)Lj10;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->j:Lj10;

    return-object p0
.end method

.method static synthetic c(Lzz;)Ldz;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->m:Ldz;

    return-object p0
.end method

.method static synthetic d(Lzz;)Lj00;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->c:Lj00;

    return-object p0
.end method

.method static synthetic e(Lzz;)Lc10;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->n:Lc10;

    return-object p0
.end method

.method static synthetic f(Lzz;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzz;->p(J)V

    return-void
.end method

.method static g(Lzz;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4
    new-instance v3, Lrz;

    iget-object v4, v0, Lzz;->f:Lt00;

    invoke-direct {v3, v4}, Lrz;-><init>(Lt00;)V

    invoke-virtual {v3}, Lrz;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Laz;->f()Laz;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening a new session with ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laz;->b(Ljava/lang/String;)V

    .line 6
    iget-object v4, v0, Lzz;->k:Lzy;

    invoke-interface {v4, v3}, Lzy;->h(Ljava/lang/String;)Z

    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "17.4.0"

    aput-object v7, v5, v6

    const-string v6, "Crashlytics Android SDK/%s"

    .line 8
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, v0, Lzz;->k:Lzy;

    invoke-interface {v5, v3, v4, v1, v2}, Lzy;->d(Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    iget-object v4, v0, Lzz;->f:Lt00;

    invoke-virtual {v4}, Lt00;->b()Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v4, v0, Lzz;->h:Lmz;

    iget-object v8, v4, Lmz;->e:Ljava/lang/String;

    .line 12
    iget-object v9, v4, Lmz;->f:Ljava/lang/String;

    .line 13
    iget-object v4, v0, Lzz;->f:Lt00;

    invoke-virtual {v4}, Lt00;->c()Ljava/lang/String;

    move-result-object v10

    .line 14
    iget-object v4, v0, Lzz;->h:Lmz;

    iget-object v4, v4, Lmz;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 15
    sget-object v4, Lo00;->f:Lo00;

    goto :goto_0

    :cond_0
    sget-object v4, Lo00;->c:Lo00;

    .line 16
    :goto_0
    invoke-virtual {v4}, Lo00;->a()I

    move-result v11

    .line 17
    iget-object v5, v0, Lzz;->k:Lzy;

    iget-object v12, v0, Lzz;->l:Ljava/lang/String;

    move-object v6, v3

    invoke-interface/range {v5 .. v12}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 19
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 20
    iget-object v6, v0, Lzz;->a:Landroid/content/Context;

    .line 21
    invoke-static {v6}, Lsz;->m(Landroid/content/Context;)Z

    move-result v6

    .line 22
    iget-object v7, v0, Lzz;->k:Lzy;

    invoke-interface {v7, v3, v4, v5, v6}, Lzy;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iget-object v4, v0, Lzz;->a:Landroid/content/Context;

    .line 24
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lsz$a;->a()Lsz$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    .line 26
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    .line 28
    invoke-static {}, Lsz;->j()J

    move-result-wide v10

    .line 29
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v12, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v12, v12, v5

    .line 30
    invoke-static {v4}, Lsz;->l(Landroid/content/Context;)Z

    move-result v14

    .line 31
    invoke-static {v4}, Lsz;->f(Landroid/content/Context;)I

    move-result v15

    .line 32
    sget-object v16, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 33
    sget-object v17, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 34
    iget-object v5, v0, Lzz;->k:Lzy;

    move-object v6, v3

    invoke-interface/range {v5 .. v17}, Lzy;->c(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, v0, Lzz;->j:Lj10;

    invoke-virtual {v4, v3}, Lj10;->d(Ljava/lang/String;)V

    .line 36
    iget-object v0, v0, Lzz;->n:Lc10;

    invoke-virtual {v0, v3, v1, v2}, Lc10;->g(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic h(Lzz;)Ln00;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->b:Ln00;

    return-object p0
.end method

.method static synthetic i(Lzz;)Ltz;
    .locals 0

    .line 1
    iget-object p0, p0, Lzz;->e:Ltz;

    return-object p0
.end method

.method static j(Lzz;)Lkw;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lzz;->t:Ljava/io/FilenameFilter;

    .line 4
    invoke-virtual {p0}, Lzz;->t()Ljava/io/File;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/io/File;

    .line 6
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    const-string v8, "com.google.firebase.crash.FirebaseCrash"

    .line 8
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x1

    goto :goto_1

    :catch_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    .line 9
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v5

    const-string v6, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {v5, v6}, Laz;->i(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 10
    invoke-static {v5}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v5

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v8

    const-string v9, "Logging app exception event to Firebase Analytics"

    invoke-virtual {v8, v9}, Laz;->b(Ljava/lang/String;)V

    .line 12
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 13
    new-instance v7, Lyz;

    invoke-direct {v7, p0, v5, v6}, Lyz;-><init>(Lzz;J)V

    invoke-static {v8, v7}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object v5

    .line 14
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 15
    :catch_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v5

    const-string v6, "Could not parse app exception timestamp from file "

    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Laz;->i(Ljava/lang/String;)V

    .line 17
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v0}, Lnw;->e(Ljava/util/Collection;)Lkw;

    move-result-object p0

    return-object p0
.end method

.method private o(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lzz;->n:Lc10;

    invoke-virtual {v0}, Lc10;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 3
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "No open sessions to be closed."

    invoke-virtual {p1, v0}, Laz;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lzz;->k:Lzy;

    invoke-interface {v2, v1}, Lzy;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finalizing native report for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laz;->h(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lzz;->k:Lzy;

    .line 8
    invoke-interface {v2, v1}, Lzy;->b(Ljava/lang/String;)Lcz;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcz;->d()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 12
    new-instance v5, Lj10;

    iget-object v6, p0, Lzz;->a:Landroid/content/Context;

    iget-object v7, p0, Lzz;->i:Lj10$b;

    invoke-direct {v5, v6, v7, v1}, Lj10;-><init>(Landroid/content/Context;Lj10$b;Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/io/File;

    .line 14
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lzz;->t()Ljava/io/File;

    move-result-object v8

    const-string v9, "native-sessions"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_2

    .line 17
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    const-string v3, "Couldn\'t create directory to store native session files, aborting."

    invoke-virtual {v2, v3}, Laz;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 18
    :cond_2
    invoke-direct {p0, v3, v4}, Lzz;->p(J)V

    .line 19
    invoke-virtual {p0}, Lzz;->t()Ljava/io/File;

    move-result-object v3

    .line 20
    invoke-virtual {v5}, Lj10;->b()[B

    move-result-object v4

    .line 21
    new-instance v7, Lx00;

    invoke-direct {v7, v3}, Lx00;-><init>(Ljava/io/File;)V

    .line 22
    invoke-virtual {v7, v1}, Lx00;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 23
    invoke-virtual {v7, v1}, Lx00;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v9, Lqz;

    const-string v10, "logs_file"

    const-string v11, "logs"

    invoke-direct {v9, v10, v11, v4}, Lqz;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v4, Ls00;

    .line 27
    invoke-interface {v2}, Lcz;->f()Ljava/io/File;

    move-result-object v9

    const-string v10, "crash_meta_file"

    const-string v11, "metadata"

    invoke-direct {v4, v10, v11, v9}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 28
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v4, Ls00;

    .line 30
    invoke-interface {v2}, Lcz;->e()Ljava/io/File;

    move-result-object v9

    const-string v10, "session_meta_file"

    const-string v11, "session"

    invoke-direct {v4, v10, v11, v9}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 31
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v4, Ls00;

    .line 33
    invoke-interface {v2}, Lcz;->a()Ljava/io/File;

    move-result-object v9

    const-string v10, "app_meta_file"

    const-string v11, "app"

    invoke-direct {v4, v10, v11, v9}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 34
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v4, Ls00;

    .line 36
    invoke-interface {v2}, Lcz;->c()Ljava/io/File;

    move-result-object v9

    const-string v10, "device_meta_file"

    const-string v11, "device"

    invoke-direct {v4, v10, v11, v9}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 37
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Ls00;

    .line 39
    invoke-interface {v2}, Lcz;->b()Ljava/io/File;

    move-result-object v9

    const-string v10, "os_meta_file"

    const-string v11, "os"

    invoke-direct {v4, v10, v11, v9}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 40
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Ls00;

    .line 42
    invoke-interface {v2}, Lcz;->d()Ljava/io/File;

    move-result-object v2

    const-string v9, "minidump_file"

    const-string v10, "minidump"

    invoke-direct {v4, v9, v10, v2}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 43
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v2, Ls00;

    const-string v4, "user_meta_file"

    const-string v9, "user"

    invoke-direct {v2, v4, v9, v3}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v2, Ls00;

    const-string v3, "keys_file"

    const-string v4, "keys"

    invoke-direct {v2, v3, v4, v7}, Ls00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v6, v8}, Lz00;->b(Ljava/io/File;Ljava/util/List;)V

    .line 47
    iget-object v2, p0, Lzz;->n:Lc10;

    invoke-virtual {v2, v1, v8}, Lc10;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 48
    invoke-virtual {v5}, Lj10;->a()V

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No minidump data found for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laz;->i(Ljava/lang/String;)V

    .line 50
    :goto_1
    iget-object v2, p0, Lzz;->k:Lzy;

    invoke-interface {v2, v1}, Lzy;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 51
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not finalize native session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Laz;->i(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 53
    :cond_5
    iget-object p1, p0, Lzz;->n:Lc10;

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 55
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 56
    invoke-virtual {p1, v2, v3, v1}, Lc10;->d(JLjava/lang/String;)V

    return-void
.end method

.method private p(J)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lzz;->t()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p2

    const-string v0, "Could not create app exception marker file."

    invoke-virtual {p2, v0, p1}, Laz;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzz;->n:Lc10;

    invoke-virtual {v0}, Lc10;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method A(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object v1, p0, Lzz;->e:Ltz;

    new-instance v2, Lzz$e;

    invoke-direct {v2, p0, v0, p2, p1}, Lzz$e;-><init>(Lzz;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    .line 3
    new-instance p1, Luz;

    invoke-direct {p1, v1, v2}, Luz;-><init>(Ltz;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    return-void
.end method

.method B(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzz;->e:Ltz;

    new-instance v1, Lzz$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lzz$d;-><init>(Lzz;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    return-void
.end method

.method k()Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "checkForUnsentReports should only be called once per execution."

    invoke-virtual {v0, v1}, Laz;->i(Ljava/lang/String;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lzz;->p:Llw;

    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    return-object v0
.end method

.method l()Lkw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz;->q:Llw;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lzz;->r:Llw;

    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    return-object v0
.end method

.method m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lzz;->c:Lj00;

    invoke-virtual {v0}, Lj00;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lzz;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lzz;->k:Lzy;

    invoke-interface {v2, v0}, Lzy;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Laz;->h(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lzz;->c:Lj00;

    invoke-virtual {v0}, Lj00;->d()Z

    return v1
.end method

.method n()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lzz;->o(Z)V

    return-void
.end method

.method q(Ljava/lang/Thread$UncaughtExceptionHandler;Ll30;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzz;->e:Ltz;

    new-instance v1, Lg00;

    invoke-direct {v1, p0}, Lg00;-><init>(Lzz;)V

    invoke-virtual {v0, v1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    .line 2
    new-instance v0, Lzz$a;

    invoke-direct {v0, p0}, Lzz$a;-><init>(Lzz;)V

    .line 3
    new-instance v1, Lm00;

    invoke-direct {v1, v0, p2, p1}, Lm00;-><init>(Lm00$a;Ll30;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v1, p0, Lzz;->o:Lm00;

    .line 4
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method r()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lzz;->e:Ltz;

    invoke-virtual {v0}, Ltz;->b()V

    .line 2
    invoke-virtual {p0}, Lzz;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {v0, v2}, Laz;->i(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Laz;->h(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-direct {p0, v0}, Lzz;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Closed all previously open sessions."

    invoke-virtual {v1, v2}, Laz;->h(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    const-string v3, "Unable to finalize previously open sessions."

    invoke-virtual {v2, v3, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method t()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lzz;->g:Lc30;

    invoke-virtual {v0}, Lc30;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized u(Ll30;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 4
    iget-object v0, p0, Lzz;->e:Ltz;

    new-instance v1, Lzz$b;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lzz$b;-><init>(Lzz;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Ll30;)V

    .line 5
    invoke-virtual {v0, v1}, Ltz;->e(Ljava/util/concurrent/Callable;)Lkw;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {p1}, Lh10;->a(Lkw;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p2

    const-string p3, "Error handling uncaught exception"

    invoke-virtual {p2, p3, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzz;->o:Lm00;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm00;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method w()Lkw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz;->q:Llw;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lzz;->r:Llw;

    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    return-object v0
.end method

.method x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lzz;->d:Le10;

    invoke-virtual {v0, p1, p2}, Le10;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lzz;->d:Le10;

    invoke-virtual {p1}, Le10;->c()Ljava/util/Map;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lzz;->e:Ltz;

    new-instance v0, Lf00;

    invoke-direct {v0, p0, p1}, Lf00;-><init>(Lzz;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lzz;->a:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    throw p1

    .line 7
    :cond_2
    :goto_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Laz;->d(Ljava/lang/String;)V

    return-void
.end method

.method y(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzz;->d:Le10;

    invoke-virtual {v0, p1}, Le10;->h(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lzz;->d:Le10;

    .line 3
    iget-object v0, p0, Lzz;->e:Ltz;

    new-instance v1, Le00;

    invoke-direct {v1, p0, p1}, Le00;-><init>(Lzz;Le10;)V

    invoke-virtual {v0, v1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    return-void
.end method

.method z(Lkw;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw<",
            "Lp30;",
            ">;)",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzz;->n:Lc10;

    invoke-virtual {v0}, Lc10;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "No crash reports are available to be sent."

    invoke-virtual {p1, v0}, Laz;->h(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lzz;->p:Llw;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Llw;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crash reports are available to be sent."

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lzz;->b:Ln00;

    invoke-virtual {v0}, Ln00;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lzz;->p:Llw;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lzz;->p:Llw;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lzz;->b:Ln00;

    .line 14
    invoke-virtual {v0}, Ln00;->e()Lkw;

    move-result-object v0

    new-instance v1, Lb00;

    invoke-direct {v1, p0}, Lb00;-><init>(Lzz;)V

    .line 15
    invoke-virtual {v0, v1}, Lkw;->n(Ljw;)Lkw;

    move-result-object v0

    .line 16
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Laz;->b(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lzz;->q:Llw;

    invoke-virtual {v1}, Llw;->a()Lkw;

    move-result-object v1

    .line 18
    sget v2, Lh10;->b:I

    .line 19
    new-instance v2, Llw;

    invoke-direct {v2}, Llw;-><init>()V

    .line 20
    new-instance v3, Lg10;

    invoke-direct {v3, v2}, Lg10;-><init>(Llw;)V

    .line 21
    invoke-virtual {v0, v3}, Lkw;->f(Ldw;)Lkw;

    .line 22
    invoke-virtual {v1, v3}, Lkw;->f(Ldw;)Lkw;

    .line 23
    invoke-virtual {v2}, Llw;->a()Lkw;

    move-result-object v0

    .line 24
    :goto_0
    new-instance v1, Lzz$c;

    invoke-direct {v1, p0, p1}, Lzz$c;-><init>(Lzz;Lkw;)V

    .line 25
    invoke-virtual {v0, v1}, Lkw;->n(Ljw;)Lkw;

    move-result-object p1

    return-object p1
.end method
