.class public Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li00;


# direct methods
.method private constructor <init>(Li00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    return-void
.end method

.method static a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lzy;Lvy;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 11

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Initializing Firebase Crashlytics 17.4.0"

    invoke-virtual {v0, v1}, Laz;->g(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lt00;

    invoke-direct {v1, v2, v0, p1}, Lt00;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/g;)V

    .line 5
    new-instance p1, Ln00;

    invoke-direct {p1, p0}, Ln00;-><init>(Lcom/google/firebase/c;)V

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lbz;

    invoke-direct {p2}, Lbz;-><init>()V

    :cond_0
    move-object v6, p2

    if-eqz p3, :cond_2

    .line 7
    new-instance p2, Lhz;

    invoke-direct {p2, p3}, Lhz;-><init>(Lvy;)V

    .line 8
    new-instance v0, Lcom/google/firebase/crashlytics/a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/a;-><init>()V

    .line 9
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->b(Lvy;Lcom/google/firebase/crashlytics/a;)Lvy$a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 10
    invoke-static {}, Laz;->f()Laz;

    move-result-object p3

    const-string v3, "Registered Firebase Analytics listener."

    invoke-virtual {p3, v3}, Laz;->b(Ljava/lang/String;)V

    .line 11
    new-instance p3, Lgz;

    invoke-direct {p3}, Lgz;-><init>()V

    .line 12
    new-instance v3, Lfz;

    const/16 v4, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p2, v4, v5}, Lfz;-><init>(Lhz;ILjava/util/concurrent/TimeUnit;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/a;->b(Lez;)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/a;->c(Lez;)V

    move-object p2, v3

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p3

    const-string v0, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 16
    invoke-virtual {p3, v0}, Laz;->i(Ljava/lang/String;)V

    .line 17
    new-instance p3, Llz;

    invoke-direct {p3}, Llz;-><init>()V

    :goto_0
    move-object v9, p2

    move-object v8, p3

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p2

    const-string p3, "Firebase Analytics is not available."

    invoke-virtual {p2, p3}, Laz;->b(Ljava/lang/String;)V

    .line 19
    new-instance p2, Llz;

    invoke-direct {p2}, Llz;-><init>()V

    .line 20
    new-instance p3, Liz;

    invoke-direct {p3}, Liz;-><init>()V

    move-object v8, p2

    move-object v9, p3

    :goto_1
    const-string p2, "Crashlytics Exception Handler"

    .line 21
    invoke-static {p2}, Lr00;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 22
    new-instance p2, Li00;

    move-object v3, p2

    move-object v4, p0

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v3 .. v10}, Li00;-><init>(Lcom/google/firebase/c;Lt00;Lzy;Ln00;Lkz;Ldz;Ljava/util/concurrent/ExecutorService;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v2}, Lsz;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {}, Laz;->f()Laz;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapping file ID is: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Laz;->b(Ljava/lang/String;)V

    .line 26
    new-instance p3, Lb40;

    invoke-direct {p3, v2}, Lb40;-><init>(Landroid/content/Context;)V

    .line 27
    :try_start_0
    invoke-static {v2, v1, v3, p0, p3}, Lmz;->a(Landroid/content/Context;Lt00;Ljava/lang/String;Ljava/lang/String;Lb40;)Lmz;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-static {}, Laz;->f()Laz;

    move-result-object p3

    const-string v0, "Installer package name is: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lmz;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Laz;->h(Ljava/lang/String;)V

    const-string p3, "com.google.firebase.crashlytics.startup"

    .line 29
    invoke-static {p3}, Lr00;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 30
    new-instance v5, Lt20;

    invoke-direct {v5}, Lt20;-><init>()V

    iget-object v6, p0, Lmz;->e:Ljava/lang/String;

    iget-object v7, p0, Lmz;->f:Ljava/lang/String;

    move-object v4, v1

    move-object v8, p1

    .line 31
    invoke-static/range {v2 .. v8}, Lk30;->i(Landroid/content/Context;Ljava/lang/String;Lt00;Lt20;Ljava/lang/String;Ljava/lang/String;Ln00;)Lk30;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p3}, Lk30;->m(Ljava/util/concurrent/Executor;)Lkw;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$a;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$a;-><init>()V

    .line 33
    invoke-virtual {v0, p3, v1}, Lkw;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    .line 34
    invoke-virtual {p2, p0, p1}, Li00;->q(Lmz;Ll30;)Z

    move-result p0

    .line 35
    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;-><init>(ZLi00;Lk30;)V

    invoke-static {p3, v0}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    .line 36
    new-instance p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Li00;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string p2, "Error retrieving app package info."

    invoke-virtual {p1, p2, p0}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lvy;Lcom/google/firebase/crashlytics/a;)Lvy$a;
    .locals 2

    const-string v0, "clx"

    .line 1
    invoke-interface {p0, v0, p1}, Lvy;->c(Ljava/lang/String;Lvy$b;)Lvy$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 3
    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    const-string v0, "crash"

    .line 4
    invoke-interface {p0, v0, p1}, Lvy;->c(Ljava/lang/String;Lvy$b;)Lvy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Laz;->f()Laz;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 6
    invoke-virtual {p0, p1}, Laz;->i(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->h()Lcom/google/firebase/c;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    const-string v1, "FirebaseCrashlytics component is not present."

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public checkForUnsentReports()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0}, Li00;->e()Lkw;

    move-result-object v0

    return-object v0
.end method

.method public deleteUnsentReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0}, Li00;->f()Lkw;

    return-void
.end method

.method public didCrashOnPreviousExecution()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0}, Li00;->g()Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0, p1}, Li00;->m(Ljava/lang/String;)V

    return-void
.end method

.method public recordException(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "A null value was passed to recordException. Ignoring."

    invoke-virtual {p1, v0}, Laz;->i(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0, p1}, Li00;->n(Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendUnsentReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0}, Li00;->r()Lkw;

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0, p1}, Li00;->s(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCrashlyticsCollectionEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Li00;->s(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;D)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;J)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Li00;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomKeys(Lcom/google/firebase/crashlytics/c;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a:Li00;

    invoke-virtual {v0, p1}, Li00;->u(Ljava/lang/String;)V

    return-void
.end method
