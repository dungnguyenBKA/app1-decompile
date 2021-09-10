.class public Lk00;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lt00;

.field private final c:Lmz;

.field private final d:Lz30;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk00;->e:Ljava/util/Map;

    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "armeabi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "armeabi-v7a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "arm64-v8a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "x86"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x86_64"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "17.4.0"

    aput-object v3, v2, v1

    const-string v1, "Crashlytics Android SDK/%s"

    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk00;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt00;Lmz;Lz30;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk00;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lk00;->b:Lt00;

    .line 4
    iput-object p3, p0, Lk00;->c:Lmz;

    .line 5
    iput-object p4, p0, Lk00;->d:Lz30;

    return-void
.end method

.method private c(La40;III)Li20$d$d$a$b$c;
    .locals 5

    .line 1
    iget-object v0, p1, La40;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p1, La40;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p1, La40;->c:[Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 4
    :goto_0
    iget-object p1, p1, La40;->d:La40;

    if-lt p4, p3, :cond_1

    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_1

    .line 5
    iget-object v4, v4, La40;->d:La40;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Li20$d$d$a$b$c;->a()Li20$d$d$a$b$c$a;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v0}, Li20$d$d$a$b$c$a;->f(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    .line 8
    invoke-virtual {v4, v1}, Li20$d$d$a$b$c$a;->e(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    .line 9
    invoke-direct {p0, v2, p2}, Lk00;->d([Ljava/lang/StackTraceElement;I)Lj20;

    move-result-object v0

    invoke-static {v0}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object v0

    invoke-virtual {v4, v0}, Li20$d$d$a$b$c$a;->c(Lj20;)Li20$d$d$a$b$c$a;

    .line 10
    invoke-virtual {v4, v3}, Li20$d$d$a$b$c$a;->d(I)Li20$d$d$a$b$c$a;

    if-eqz p1, :cond_2

    if-nez v3, :cond_2

    add-int/lit8 p4, p4, 0x1

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lk00;->c(La40;III)Li20$d$d$a$b$c;

    move-result-object p1

    .line 12
    invoke-virtual {v4, p1}, Li20$d$d$a$b$c$a;->b(Li20$d$d$a$b$c;)Li20$d$d$a$b$c$a;

    .line 13
    :cond_2
    invoke-virtual {v4}, Li20$d$d$a$b$c$a;->a()Li20$d$d$a$b$c;

    move-result-object p1

    return-object p1
.end method

.method private d([Ljava/lang/StackTraceElement;I)Lj20;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I)",
            "Lj20<",
            "Li20$d$d$a$b$e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-static {}, Li20$d$d$a$b$e$b;->a()Li20$d$d$a$b$e$b$a;

    move-result-object v4

    invoke-virtual {v4, p2}, Li20$d$d$a$b$e$b$a;->c(I)Li20$d$d$a$b$e$b$a;

    .line 4
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_0
    move-wide v8, v6

    .line 6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    if-lez v11, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    int-to-long v6, v3

    .line 10
    :cond_1
    invoke-virtual {v4, v8, v9}, Li20$d$d$a$b$e$b$a;->e(J)Li20$d$d$a$b$e$b$a;

    invoke-virtual {v4, v5}, Li20$d$d$a$b$e$b$a;->f(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;

    invoke-virtual {v4, v10}, Li20$d$d$a$b$e$b$a;->b(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;

    invoke-virtual {v4, v6, v7}, Li20$d$d$a$b$e$b$a;->d(J)Li20$d$d$a$b$e$b$a;

    invoke-virtual {v4}, Li20$d$d$a$b$e$b$a;->a()Li20$d$d$a$b$e$b;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Li20$d$d$a$b$e;
    .locals 1

    .line 1
    invoke-static {}, Li20$d$d$a$b$e;->a()Li20$d$d$a$b$e$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Li20$d$d$a$b$e$a;->d(Ljava/lang/String;)Li20$d$d$a$b$e$a;

    .line 3
    invoke-virtual {v0, p3}, Li20$d$d$a$b$e$a;->c(I)Li20$d$d$a$b$e$a;

    .line 4
    invoke-direct {p0, p2, p3}, Lk00;->d([Ljava/lang/StackTraceElement;I)Lj20;

    move-result-object p1

    invoke-static {p1}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object p1

    invoke-virtual {v0, p1}, Li20$d$d$a$b$e$a;->b(Lj20;)Li20$d$d$a$b$e$a;

    .line 5
    invoke-virtual {v0}, Li20$d$d$a$b$e$a;->a()Li20$d$d$a$b$e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Li20$d$d;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p7

    .line 1
    iget-object v4, v0, Lk00;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iget-object v5, v0, Lk00;->d:Lz30;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-interface {v5, v8}, Lz30;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 7
    new-instance v11, La40;

    invoke-direct {v11, v9, v5}, La40;-><init>(Ljava/lang/Throwable;Lz30;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 8
    :goto_0
    invoke-static {}, Li20$d$d;->a()Li20$d$d$b;

    move-result-object v5

    move-object/from16 v9, p3

    .line 9
    invoke-virtual {v5, v9}, Li20$d$d$b;->f(Ljava/lang/String;)Li20$d$d$b;

    move-wide/from16 v12, p4

    .line 10
    invoke-virtual {v5, v12, v13}, Li20$d$d$b;->e(J)Li20$d$d$b;

    .line 11
    iget-object v9, v0, Lk00;->c:Lmz;

    iget-object v9, v9, Lmz;->d:Ljava/lang/String;

    iget-object v12, v0, Lk00;->a:Landroid/content/Context;

    const-string v13, "activity"

    .line 12
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 14
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 15
    iget-object v15, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_4

    .line 16
    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x64

    if-eq v14, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 17
    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 18
    :goto_3
    invoke-static {}, Li20$d$d$a;->a()Li20$d$d$a$a;

    move-result-object v15

    .line 19
    invoke-virtual {v15, v14}, Li20$d$d$a$a;->b(Ljava/lang/Boolean;)Li20$d$d$a$a;

    .line 20
    invoke-virtual {v15, v4}, Li20$d$d$a$a;->e(I)Li20$d$d$a$a;

    .line 21
    invoke-static {}, Li20$d$d$a$b;->a()Li20$d$d$a$b$b;

    move-result-object v14

    .line 22
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-direct {v0, v1, v8, v2}, Lk00;->e(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Li20$d$d$a$b$e;

    move-result-object v9

    .line 24
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p8, :cond_6

    .line 25
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v9

    .line 26
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 27
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/Thread;

    .line 28
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 29
    iget-object v1, v0, Lk00;->d:Lz30;

    .line 30
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p5, v9

    move-object/from16 v9, v16

    check-cast v9, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v9}, Lz30;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v9, 0x0

    .line 31
    invoke-direct {v0, v12, v1, v9}, Lk00;->e(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Li20$d$d$a$b$e;

    move-result-object v1

    .line 32
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    goto :goto_4

    :cond_5
    move-object/from16 v1, p2

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    .line 33
    invoke-static {v10}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object v1

    .line 34
    invoke-virtual {v14, v1}, Li20$d$d$a$b$b;->e(Lj20;)Li20$d$d$a$b$b;

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    new-array v8, v9, [Ljava/lang/StackTraceElement;

    :goto_5
    if-gtz v3, :cond_8

    move-object v1, v11

    const/4 v9, 0x0

    :goto_6
    if-eqz v1, :cond_9

    .line 35
    iget-object v1, v1, La40;->d:La40;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    .line 36
    :cond_9
    invoke-static {}, Li20$d$d$a$b$c;->a()Li20$d$d$a$b$c$a;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v7}, Li20$d$d$a$b$c$a;->f(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    .line 38
    invoke-virtual {v1, v6}, Li20$d$d$a$b$c$a;->e(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    .line 39
    invoke-direct {v0, v8, v2}, Lk00;->d([Ljava/lang/StackTraceElement;I)Lj20;

    move-result-object v6

    invoke-static {v6}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object v6

    invoke-virtual {v1, v6}, Li20$d$d$a$b$c$a;->c(Lj20;)Li20$d$d$a$b$c$a;

    .line 40
    invoke-virtual {v1, v9}, Li20$d$d$a$b$c$a;->d(I)Li20$d$d$a$b$c$a;

    if-eqz v11, :cond_a

    if-nez v9, :cond_a

    const/4 v6, 0x1

    .line 41
    invoke-direct {v0, v11, v2, v3, v6}, Lk00;->c(La40;III)Li20$d$d$a$b$c;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Li20$d$d$a$b$c$a;->b(Li20$d$d$a$b$c;)Li20$d$d$a$b$c$a;

    .line 43
    :cond_a
    invoke-virtual {v1}, Li20$d$d$a$b$c$a;->a()Li20$d$d$a$b$c;

    move-result-object v1

    .line 44
    invoke-virtual {v14, v1}, Li20$d$d$a$b$b;->c(Li20$d$d$a$b$c;)Li20$d$d$a$b$b;

    .line 45
    invoke-static {}, Li20$d$d$a$b$d;->a()Li20$d$d$a$b$d$a;

    move-result-object v1

    const-string v2, "0"

    .line 46
    invoke-virtual {v1, v2}, Li20$d$d$a$b$d$a;->d(Ljava/lang/String;)Li20$d$d$a$b$d$a;

    .line 47
    invoke-virtual {v1, v2}, Li20$d$d$a$b$d$a;->c(Ljava/lang/String;)Li20$d$d$a$b$d$a;

    const-wide/16 v2, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Li20$d$d$a$b$d$a;->b(J)Li20$d$d$a$b$d$a;

    .line 49
    invoke-virtual {v1}, Li20$d$d$a$b$d$a;->a()Li20$d$d$a$b$d;

    move-result-object v1

    .line 50
    invoke-virtual {v14, v1}, Li20$d$d$a$b$b;->d(Li20$d$d$a$b$d;)Li20$d$d$a$b$b;

    const/4 v1, 0x1

    new-array v6, v1, [Li20$d$d$a$b$a;

    .line 51
    invoke-static {}, Li20$d$d$a$b$a;->a()Li20$d$d$a$b$a$a;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v2, v3}, Li20$d$d$a$b$a$a;->b(J)Li20$d$d$a$b$a$a;

    .line 53
    invoke-virtual {v7, v2, v3}, Li20$d$d$a$b$a$a;->d(J)Li20$d$d$a$b$a$a;

    iget-object v2, v0, Lk00;->c:Lmz;

    iget-object v2, v2, Lmz;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {v7, v2}, Li20$d$d$a$b$a$a;->c(Ljava/lang/String;)Li20$d$d$a$b$a$a;

    iget-object v2, v0, Lk00;->c:Lmz;

    iget-object v2, v2, Lmz;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v7, v2}, Li20$d$d$a$b$a$a;->e(Ljava/lang/String;)Li20$d$d$a$b$a$a;

    .line 56
    invoke-virtual {v7}, Li20$d$d$a$b$a$a;->a()Li20$d$d$a$b$a;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 57
    invoke-static {v6}, Lj20;->b([Ljava/lang/Object;)Lj20;

    move-result-object v2

    .line 58
    invoke-virtual {v14, v2}, Li20$d$d$a$b$b;->b(Lj20;)Li20$d$d$a$b$b;

    .line 59
    invoke-virtual {v14}, Li20$d$d$a$b$b;->a()Li20$d$d$a$b;

    move-result-object v2

    .line 60
    invoke-virtual {v15, v2}, Li20$d$d$a$a;->d(Li20$d$d$a$b;)Li20$d$d$a$a;

    .line 61
    invoke-virtual {v15}, Li20$d$d$a$a;->a()Li20$d$d$a;

    move-result-object v2

    .line 62
    invoke-virtual {v5, v2}, Li20$d$d$b;->b(Li20$d$d$a;)Li20$d$d$b;

    .line 63
    iget-object v2, v0, Lk00;->a:Landroid/content/Context;

    invoke-static {v2}, Lpz;->a(Landroid/content/Context;)Lpz;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lpz;->b()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 65
    invoke-virtual {v6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 66
    :goto_7
    invoke-virtual {v2}, Lpz;->c()I

    move-result v2

    .line 67
    iget-object v6, v0, Lk00;->a:Landroid/content/Context;

    .line 68
    invoke-static {v6}, Lsz;->l(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    const-string v7, "sensor"

    .line 69
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    .line 70
    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v9, 0x0

    .line 71
    :goto_9
    invoke-static {}, Lsz;->j()J

    move-result-wide v6

    iget-object v1, v0, Lk00;->a:Landroid/content/Context;

    .line 72
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 73
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 74
    iget-wide v11, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v6, v11

    .line 75
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v11, v1

    .line 78
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v13, v1

    mul-long v13, v13, v11

    .line 79
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v0, v1

    mul-long v11, v11, v0

    sub-long/2addr v13, v11

    .line 80
    invoke-static {}, Li20$d$d$c;->a()Li20$d$d$c$a;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v10}, Li20$d$d$c$a;->b(Ljava/lang/Double;)Li20$d$d$c$a;

    .line 82
    invoke-virtual {v0, v2}, Li20$d$d$c$a;->c(I)Li20$d$d$c$a;

    .line 83
    invoke-virtual {v0, v9}, Li20$d$d$c$a;->f(Z)Li20$d$d$c$a;

    .line 84
    invoke-virtual {v0, v4}, Li20$d$d$c$a;->e(I)Li20$d$d$c$a;

    .line 85
    invoke-virtual {v0, v6, v7}, Li20$d$d$c$a;->g(J)Li20$d$d$c$a;

    .line 86
    invoke-virtual {v0, v13, v14}, Li20$d$d$c$a;->d(J)Li20$d$d$c$a;

    .line 87
    invoke-virtual {v0}, Li20$d$d$c$a;->a()Li20$d$d$c;

    move-result-object v0

    .line 88
    invoke-virtual {v5, v0}, Li20$d$d$b;->c(Li20$d$d$c;)Li20$d$d$b;

    .line 89
    invoke-virtual {v5}, Li20$d$d$b;->a()Li20$d$d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;J)Li20;
    .locals 11

    .line 1
    invoke-static {}, Li20;->b()Li20$a;

    move-result-object v0

    const-string v1, "17.4.0"

    .line 2
    invoke-virtual {v0, v1}, Li20$a;->h(Ljava/lang/String;)Li20$a;

    iget-object v1, p0, Lk00;->c:Lmz;

    iget-object v1, v1, Lmz;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Li20$a;->d(Ljava/lang/String;)Li20$a;

    iget-object v1, p0, Lk00;->b:Lt00;

    .line 4
    invoke-virtual {v1}, Lt00;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$a;->e(Ljava/lang/String;)Li20$a;

    iget-object v1, p0, Lk00;->c:Lmz;

    iget-object v1, v1, Lmz;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Li20$a;->b(Ljava/lang/String;)Li20$a;

    iget-object v1, p0, Lk00;->c:Lmz;

    iget-object v1, v1, Lmz;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Li20$a;->c(Ljava/lang/String;)Li20$a;

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Li20$a;->g(I)Li20$a;

    .line 8
    invoke-static {}, Li20$d;->a()Li20$d$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p2, p3}, Li20$d$b;->l(J)Li20$d$b;

    .line 10
    invoke-virtual {v1, p1}, Li20$d$b;->i(Ljava/lang/String;)Li20$d$b;

    sget-object p1, Lk00;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p1}, Li20$d$b;->g(Ljava/lang/String;)Li20$d$b;

    .line 12
    invoke-static {}, Li20$d$a;->a()Li20$d$a$a;

    move-result-object p1

    iget-object p2, p0, Lk00;->b:Lt00;

    .line 13
    invoke-virtual {p2}, Lt00;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Li20$d$a$a;->e(Ljava/lang/String;)Li20$d$a$a;

    iget-object p2, p0, Lk00;->c:Lmz;

    iget-object p2, p2, Lmz;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p2}, Li20$d$a$a;->g(Ljava/lang/String;)Li20$d$a$a;

    iget-object p2, p0, Lk00;->c:Lmz;

    iget-object p2, p2, Lmz;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p2}, Li20$d$a$a;->d(Ljava/lang/String;)Li20$d$a$a;

    iget-object p2, p0, Lk00;->b:Lt00;

    .line 16
    invoke-virtual {p2}, Lt00;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Li20$d$a$a;->f(Ljava/lang/String;)Li20$d$a$a;

    .line 17
    iget-object p2, p0, Lk00;->c:Lmz;

    iget-object p2, p2, Lmz;->g:Lb40;

    invoke-virtual {p2}, Lb40;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "Unity"

    .line 18
    invoke-virtual {p1, p3}, Li20$d$a$a;->b(Ljava/lang/String;)Li20$d$a$a;

    .line 19
    invoke-virtual {p1, p2}, Li20$d$a$a;->c(Ljava/lang/String;)Li20$d$a$a;

    .line 20
    :cond_0
    invoke-virtual {p1}, Li20$d$a$a;->a()Li20$d$a;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Li20$d$b;->b(Li20$d$a;)Li20$d$b;

    .line 22
    invoke-static {}, Li20$d$e;->a()Li20$d$e$a;

    move-result-object p1

    const/4 p2, 0x3

    .line 23
    invoke-virtual {p1, p2}, Li20$d$e$a;->d(I)Li20$d$e$a;

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p3}, Li20$d$e$a;->e(Ljava/lang/String;)Li20$d$e$a;

    sget-object p3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p3}, Li20$d$e$a;->b(Ljava/lang/String;)Li20$d$e$a;

    iget-object p3, p0, Lk00;->a:Landroid/content/Context;

    .line 26
    invoke-static {p3}, Lsz;->m(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Li20$d$e$a;->c(Z)Li20$d$e$a;

    .line 27
    invoke-virtual {p1}, Li20$d$e$a;->a()Li20$d$e;

    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Li20$d$b;->k(Li20$d$e;)Li20$d$b;

    .line 29
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object p3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    sget-object v2, Lk00;->e:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 34
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p3

    .line 35
    invoke-static {}, Lsz;->j()J

    move-result-wide v4

    .line 36
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v8, p1

    mul-long v6, v6, v8

    .line 37
    iget-object p1, p0, Lk00;->a:Landroid/content/Context;

    invoke-static {p1}, Lsz;->l(Landroid/content/Context;)Z

    move-result p1

    .line 38
    iget-object v2, p0, Lk00;->a:Landroid/content/Context;

    invoke-static {v2}, Lsz;->f(Landroid/content/Context;)I

    move-result v2

    .line 39
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 40
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 41
    invoke-static {}, Li20$d$c;->a()Li20$d$c$a;

    move-result-object v10

    .line 42
    invoke-virtual {v10, v3}, Li20$d$c$a;->b(I)Li20$d$c$a;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    invoke-virtual {v10, v3}, Li20$d$c$a;->f(Ljava/lang/String;)Li20$d$c$a;

    .line 44
    invoke-virtual {v10, p3}, Li20$d$c$a;->c(I)Li20$d$c$a;

    .line 45
    invoke-virtual {v10, v4, v5}, Li20$d$c$a;->h(J)Li20$d$c$a;

    .line 46
    invoke-virtual {v10, v6, v7}, Li20$d$c$a;->d(J)Li20$d$c$a;

    .line 47
    invoke-virtual {v10, p1}, Li20$d$c$a;->i(Z)Li20$d$c$a;

    .line 48
    invoke-virtual {v10, v2}, Li20$d$c$a;->j(I)Li20$d$c$a;

    .line 49
    invoke-virtual {v10, v8}, Li20$d$c$a;->e(Ljava/lang/String;)Li20$d$c$a;

    .line 50
    invoke-virtual {v10, v9}, Li20$d$c$a;->g(Ljava/lang/String;)Li20$d$c$a;

    .line 51
    invoke-virtual {v10}, Li20$d$c$a;->a()Li20$d$c;

    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Li20$d$b;->d(Li20$d$c;)Li20$d$b;

    .line 53
    invoke-virtual {v1, p2}, Li20$d$b;->h(I)Li20$d$b;

    .line 54
    invoke-virtual {v1}, Li20$d$b;->a()Li20$d;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Li20$a;->i(Li20$d;)Li20$a;

    invoke-virtual {v0}, Li20$a;->a()Li20;

    move-result-object p1

    return-object p1
.end method
