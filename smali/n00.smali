.class public Ln00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/google/firebase/c;

.field private final c:Ljava/lang/Object;

.field d:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private f:Z

.field private g:Ljava/lang/Boolean;

.field private final h:Llw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln00;->c:Ljava/lang/Object;

    .line 3
    new-instance v1, Llw;

    invoke-direct {v1}, Llw;-><init>()V

    iput-object v1, p0, Ln00;->d:Llw;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ln00;->e:Z

    .line 5
    iput-boolean v1, p0, Ln00;->f:Z

    .line 6
    new-instance v2, Llw;

    invoke-direct {v2}, Llw;-><init>()V

    iput-object v2, p0, Ln00;->h:Llw;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v2

    .line 8
    iput-object p1, p0, Ln00;->b:Lcom/google/firebase/c;

    .line 9
    invoke-static {v2}, Lsz;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ln00;->a:Landroid/content/SharedPreferences;

    const-string v3, "firebase_crashlytics_collection_enabled"

    .line 10
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 11
    iput-boolean v1, p0, Ln00;->f:Z

    .line 12
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v6

    :goto_0
    if-nez p1, :cond_1

    .line 13
    invoke-direct {p0, v2}, Ln00;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    :cond_1
    iput-object p1, p0, Ln00;->g:Ljava/lang/Boolean;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ln00;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Ln00;->d:Llw;

    invoke-virtual {p1, v6}, Llw;->e(Ljava/lang/Object;)Z

    .line 18
    iput-boolean v5, p0, Ln00;->e:Z

    .line 19
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "firebase_crashlytics_collection_enabled"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v2, "Could not read data collection permission from manifest"

    invoke-virtual {v0, v2, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Ln00;->f:Z

    return-object v1

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ln00;->f:Z

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ln00;->h:Llw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llw;->e(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An invalid data collection token was used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln00;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln00;->b:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->p()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "ENABLED"

    goto :goto_1

    :cond_1
    const-string v1, "DISABLED"

    .line 4
    :goto_1
    iget-object v2, p0, Ln00;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const-string v2, "global Firebase setting"

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v2, p0, Ln00;->f:Z

    if-eqz v2, :cond_3

    const-string v2, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_2

    :cond_3
    const-string v2, "API"

    .line 6
    :goto_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Crashlytics automatic data collection %s by %s."

    .line 7
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v3, v1}, Laz;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/Boolean;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Ln00;->f:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v1, p0, Ln00;->b:Lcom/google/firebase/c;

    invoke-virtual {v1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Ln00;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Ln00;->g:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Ln00;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firebase_crashlytics_collection_enabled"

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 6
    :cond_2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    iget-object p1, p0, Ln00;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p0}, Ln00;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-boolean v0, p0, Ln00;->e:Z

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Ln00;->d:Llw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ln00;->e:Z

    goto :goto_3

    .line 13
    :cond_3
    iget-boolean v1, p0, Ln00;->e:Z

    if-eqz v1, :cond_4

    .line 14
    new-instance v1, Llw;

    invoke-direct {v1}, Llw;-><init>()V

    iput-object v1, p0, Ln00;->d:Llw;

    .line 15
    iput-boolean v0, p0, Ln00;->e:Z

    .line 16
    :cond_4
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public e()Lkw;
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
    iget-object v0, p0, Ln00;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln00;->d:Llw;

    invoke-virtual {v1}, Llw;->a()Lkw;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln00;->h:Llw;

    .line 2
    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln00;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Ln00;->d:Llw;

    invoke-virtual {v2}, Llw;->a()Lkw;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget v1, Lh10;->b:I

    .line 6
    new-instance v1, Llw;

    invoke-direct {v1}, Llw;-><init>()V

    .line 7
    new-instance v3, Lg10;

    invoke-direct {v3, v1}, Lg10;-><init>(Llw;)V

    .line 8
    invoke-virtual {v0, v3}, Lkw;->f(Ldw;)Lkw;

    .line 9
    invoke-virtual {v2, v3}, Lkw;->f(Ldw;)Lkw;

    .line 10
    invoke-virtual {v1}, Llw;->a()Lkw;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
