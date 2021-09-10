.class public Lcom/vungle/warren/persistence/CacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/CacheManager$Listener;
    }
.end annotation


# static fields
.field private static final COM_VUNGLE_SDK:Ljava/lang/String; = "com.vungle.sdk"

.field private static final PATH_ID:Ljava/lang/String; = "cache_path"

.field private static final PATH_IDS:Ljava/lang/String; = "cache_paths"

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field static final UNKNOWN_SIZE:J = -0x1L

.field private static final VUNGLE_DIR:Ljava/lang/String; = "vungle_cache"


# instance fields
.field private changed:Z

.field private final context:Landroid/content/Context;

.field private current:Ljava/io/File;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/persistence/CacheManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private old:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    const-string v0, "com.vungle.sdk"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/persistence/CacheManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    return-void
.end method

.method private check()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->selectFileDest()V

    :cond_1
    return-void
.end method

.method private getBytesAvailable(I)J
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v4, Lcom/vungle/warren/persistence/CacheManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get available bytes"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long v1, v2, v0

    :cond_2
    return-wide v1
.end method

.method private declared-synchronized observeDirectory(Ljava/io/File;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/persistence/CacheManager$1;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, p0, v2, v3}, Lcom/vungle/warren/persistence/CacheManager$1;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    new-instance v2, Lcom/vungle/warren/persistence/CacheManager$2;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/vungle/warren/persistence/CacheManager$2;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->observers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 9
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized selectFileDest()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "cache_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/io/File;

    .line 7
    new-instance v7, Ljava/io/File;

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    const-string v8, "vungle_cache"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v7, v6, v5

    new-instance v3, Ljava/io/File;

    const-string v7, "vungle_cache"

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 11
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v3

    move v7, v3

    :goto_3
    if-eqz v7, :cond_4

    move-object v1, v6

    .line 12
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 13
    iget-object v5, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "cache_paths"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    if-eqz v1, :cond_9

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "cache_paths"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 18
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 20
    :cond_b
    iget-object v6, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    if-eqz v1, :cond_d

    .line 21
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 22
    :cond_e
    iput-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    if-eqz v1, :cond_f

    .line 23
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cache_path"

    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    :cond_f
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager$Listener;

    .line 25
    invoke-interface {v2}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V

    goto :goto_6

    .line 26
    :cond_10
    iput-boolean v4, p0, Lcom/vungle/warren/persistence/CacheManager;->changed:Z

    .line 27
    :cond_11
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v0, p0, Lcom/vungle/warren/persistence/CacheManager;->changed:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBytesAvailable()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getCache()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->current:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOldCaches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->check()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->old:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
