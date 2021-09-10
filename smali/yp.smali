.class public Lyp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyp$f;,
        Lyp$e;
    }
.end annotation


# static fields
.field private static s:Lyp;


# instance fields
.field private a:Lcom/google/billingclient/g;

.field private b:Lcom/google/billingclient/g$d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgq;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfq;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liq;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfq;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhq;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyp$f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyp$e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lyp$e;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lyp;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lyp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lyp;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lyp;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyp;->p:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->q:Ljava/util/List;

    .line 10
    new-instance v0, Lyp$c;

    invoke-direct {v0, p0}, Lyp$c;-><init>(Lyp;)V

    iput-object v0, p0, Lyp;->r:Lyp$e;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->c:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->d:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->e:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->g:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->f:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyp;->h:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lc2;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lyp;->i:I

    .line 19
    new-instance v0, Lcom/google/billingclient/g;

    .line 20
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    .line 21
    new-instance v2, Lxp;

    invoke-direct {v2, p0}, Lxp;-><init>(Lyp;)V

    invoke-direct {v0, v1, v2}, Lcom/google/billingclient/g;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/m;)V

    iput-object v0, p0, Lyp;->a:Lcom/google/billingclient/g;

    .line 22
    new-instance v1, Lyp$a;

    invoke-direct {v1, p0}, Lyp$a;-><init>(Lyp;)V

    invoke-virtual {v0, v1}, Lcom/google/billingclient/g;->x(Lcom/google/billingclient/g$d;)V

    .line 23
    new-instance v0, Lyp$b;

    .line 24
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lyp$b;-><init>(Lyp;Landroid/os/Looper;)V

    iput-object v0, p0, Lyp;->k:Landroid/os/Handler;

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Leq;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lyp;->r:Lyp$e;

    invoke-interface {p2, p1}, Lyp$e;->n(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p2, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v0, 0xf0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    iget-object p2, p0, Lyp;->r:Lyp$e;

    invoke-interface {p2, p1}, Lyp$e;->q(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 8
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leq;

    iget-object v3, v3, Leq;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "CloudStoreManager"

    const-string v0, "mkdirs failed"

    .line 10
    invoke-static {p2, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p2, p0, Lyp;->r:Lyp$e;

    invoke-interface {p2, p1}, Lyp$e;->q(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Download_Start"

    .line 13
    invoke-static {v1, v3, p1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lyp;->r:Lyp$e;

    invoke-interface {v1, p1}, Lyp$e;->j(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leq;

    iget-object v3, v3, Leq;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Lyp$e;->j(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lml;->k:Ljava/util/concurrent/Executor;

    new-instance v3, Lom;

    .line 17
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leq;

    iget-object v4, v4, Leq;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leq;

    iget-object v2, v2, Leq;->b:Ljava/lang/String;

    new-instance v5, Lyp$d;

    invoke-direct {v5, p0, v0, p1, p2}, Lyp$d;-><init>(Lyp;ILjava/lang/String;Ljava/util/List;)V

    invoke-direct {v3, v4, v2, v5}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    .line 18
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static B(Liq;)Z
    .locals 3

    .line 1
    iget v0, p0, Lfq;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lfq;->h:Ljava/lang/String;

    invoke-static {v0}, Ldq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    array-length v0, v0

    if-lez v0, :cond_2

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Liq;->f()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method private static D()Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cutout_bg.json"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static F()Lyp;
    .locals 2

    .line 1
    sget-object v0, Lyp;->s:Lyp;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lyp;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lyp;->s:Lyp;

    if-nez v1, :cond_0

    new-instance v1, Lyp;

    invoke-direct {v1}, Lyp;-><init>()V

    sput-object v1, Lyp;->s:Lyp;

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lyp;->s:Lyp;

    return-object v0
.end method

.method private I(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lfq;",
            ">;"
        }
    .end annotation

    const-string v0, "cutoutbg_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lyp;->c:Ljava/util/List;

    return-object p1

    :cond_0
    const-string v0, "font_"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lyp;->e:Ljava/util/List;

    return-object p1

    :cond_1
    const-string v0, "shape_"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lyp;->g:Ljava/util/List;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Lyp;->c:Ljava/util/List;

    return-object p1
.end method

.method private P()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Lyp;->D()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "utf-8"

    .line 3
    invoke-static {v0, v1}, Landroidx/core/app/b;->q0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "version"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "LocalCutoutBgPackageVersion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "category"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 10
    iget-object v2, p0, Lyp;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11
    iget-object v2, p0, Lyp;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 12
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "items"

    .line 13
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 14
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "titleMap"

    .line 15
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 17
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Ljq;->a(Lorg/json/JSONObject;)Ljq;

    move-result-object v9

    .line 20
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 21
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 22
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 23
    invoke-static {v7}, Lgq;->e(Lorg/json/JSONObject;)Lgq;

    move-result-object v7

    .line 24
    invoke-virtual {v7, v6}, Lgq;->h(Ljava/util/Map;)V

    .line 25
    iget v8, p0, Lyp;->i:I

    iget v9, v7, Lfq;->c:I

    if-lt v8, v9, :cond_4

    .line 26
    iget-object v8, p0, Lyp;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-boolean v8, v7, Lfq;->e:Z

    if-nez v8, :cond_3

    .line 28
    invoke-static {v7}, Lyp;->S(Lfq;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 29
    :cond_3
    iget-object v8, p0, Lyp;->d:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_6
    iget-object v0, p0, Lyp;->c:Ljava/util/List;

    sget-object v1, Lup;->b:Lup;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    iget-object v0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private Q()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shape.json"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "utf-8"

    .line 4
    invoke-static {v0, v1}, Landroidx/core/app/b;->q0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "version"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "LocalCutoutShapePackageVersion"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "category"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 11
    iget-object v2, p0, Lyp;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12
    iget-object v2, p0, Lyp;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "items"

    .line 14
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "titleMap"

    .line 16
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 18
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 19
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Ljq;->a(Lorg/json/JSONObject;)Ljq;

    move-result-object v9

    .line 21
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 22
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 23
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 24
    invoke-static {v7}, Lhq;->e(Lorg/json/JSONObject;)Lhq;

    move-result-object v7

    .line 25
    invoke-virtual {v7, v6}, Lhq;->g(Ljava/util/Map;)V

    .line 26
    iget v8, p0, Lyp;->i:I

    iget v9, v7, Lfq;->c:I

    if-lt v8, v9, :cond_4

    .line 27
    iget-object v8, p0, Lyp;->g:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-boolean v8, v7, Lfq;->e:Z

    if-nez v8, :cond_3

    .line 29
    invoke-static {v7}, Lyp;->S(Lfq;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 30
    :cond_3
    iget-object v8, p0, Lyp;->h:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_6
    iget-object v0, p0, Lyp;->g:Ljava/util/List;

    sget-object v1, Lwp;->b:Lwp;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    iget-object v0, p0, Lyp;->h:Ljava/util/List;

    sget-object v1, Llp;->b:Llp;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    iget-object v0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private R()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "font.json"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "LocalFontPackageVersion"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v1, "utf-8"

    .line 4
    invoke-static {v0, v1}, Landroidx/core/app/b;->q0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "version"

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "items"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 13
    iget-object v2, p0, Lyp;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 14
    iget-object v2, p0, Lyp;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_1
    if-ge v4, v1, :cond_3

    .line 15
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {v2}, Liq;->e(Lorg/json/JSONObject;)Liq;

    move-result-object v2

    .line 17
    iget v3, p0, Lyp;->i:I

    iget v5, v2, Lfq;->c:I

    if-lt v3, v5, :cond_2

    .line 18
    iget-object v3, p0, Lyp;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget v3, v2, Lfq;->b:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    invoke-static {v2}, Lyp;->B(Liq;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    iget-object v3, p0, Lyp;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, p0, Lyp;->e:Ljava/util/List;

    sget-object v1, Lmp;->b:Lmp;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    iget-object v0, p0, Lyp;->f:Ljava/util/List;

    sget-object v1, Ltp;->b:Ltp;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    iget-object v0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static S(Lfq;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    iget-object v1, p0, Lfq;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lfq;->b:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    const/4 v2, 0x0

    .line 3
    instance-of v3, p0, Lgq;

    if-eqz v3, :cond_3

    .line 4
    check-cast p0, Lgq;

    .line 5
    iget-object p0, p0, Lfq;->h:Ljava/lang/String;

    invoke-static {p0}, Ldq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lsp;->a:Lsp;

    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    array-length p0, p0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 9
    :cond_3
    instance-of v3, p0, Liq;

    if-eqz v3, :cond_4

    .line 10
    check-cast p0, Liq;

    invoke-static {p0}, Lyp;->B(Liq;)Z

    move-result p0

    return p0

    .line 11
    :cond_4
    instance-of p0, p0, Lhq;

    if-eqz p0, :cond_5

    .line 12
    invoke-static {v1}, Ldq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    return v0

    .line 13
    :cond_6
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 16
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 17
    array-length p0, p0

    if-lez p0, :cond_8

    return v4

    :cond_8
    :goto_0
    return v0
.end method

.method static synthetic a(Lyp;)Lcom/google/billingclient/g$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->b:Lcom/google/billingclient/g$d;

    return-object p0
.end method

.method static synthetic b(Lyp;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lyp;->D()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lyp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyp;->P()V

    return-void
.end method

.method static synthetic f(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lyp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyp;->R()V

    return-void
.end method

.method static synthetic h(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic i(Lyp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyp;->Q()V

    return-void
.end method

.method static synthetic j(Lyp;)Lcom/google/billingclient/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->a:Lcom/google/billingclient/g;

    return-object p0
.end method

.method static synthetic k(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic l(Lyp;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->p:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic m(Lyp;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->q:Ljava/util/List;

    return-object p0
.end method

.method static n(Lyp;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cutoutbg_"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lyp;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v0, "font_"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lyp;->f:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v0, "shape_"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lyp;->h:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lyp;->d:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method static synthetic o(Lyp;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyp;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lyp;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lyp;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->f:Ljava/util/List;

    return-object p0
.end method

.method static r(Lyp;IZ)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lyp;->j:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object p0, p0, Lyp;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyp$f;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1, p2}, Lyp$f;->s(IZ)V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic s(Lyp;)Lyp$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp;->r:Lyp$e;

    return-object p0
.end method

.method static synthetic t(Lyp;)I
    .locals 0

    .line 1
    iget p0, p0, Lyp;->i:I

    return p0
.end method

.method static u(Lyp;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CloudStoreManager"

    const-string v1, "updateServerStoreCutoutBg"

    .line 2
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lyp;->D()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LocalCutoutBgPackageVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    iget-object v0, p0, Lyp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lyp;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cutout_bg.json.tmp"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v1, Lml;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lom;

    sget-object v3, Ldq;->b:Ljava/lang/String;

    new-instance v4, Laq;

    invoke-direct {v4, p0}, Laq;-><init>(Lyp;)V

    invoke-direct {v2, v3, v0, v4}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static v(Lyp;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CloudStoreManager"

    const-string v1, "updateServerStoreFont"

    .line 2
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lyp;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lyp;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "font.json.tmp"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Lml;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lom;

    sget-object v3, Ldq;->c:Ljava/lang/String;

    new-instance v4, Lbq;

    invoke-direct {v4, p0}, Lbq;-><init>(Lyp;)V

    invoke-direct {v2, v3, v0, v4}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static w(Lyp;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CloudStoreManager"

    const-string v1, "updateServerStoreCutoutBg"

    .line 2
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lyp;->D()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LocalCutoutShapePackageVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_1
    iget-object v0, p0, Lyp;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lyp;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shape.json.tmp"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v1, Lml;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lom;

    sget-object v3, Ldq;->d:Ljava/lang/String;

    new-instance v4, Lcq;

    invoke-direct {v4, p0}, Lcq;-><init>(Lyp;)V

    invoke-direct {v2, v3, v0, v4}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public C()Lcom/google/billingclient/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lyp;->a:Lcom/google/billingclient/g;

    return-object v0
.end method

.method public E(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lyp;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyp;->d:Ljava/util/List;

    return-object v0
.end method

.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyp;->h:Ljava/util/List;

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfq;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyp;->e:Ljava/util/List;

    return-object v0
.end method

.method public K()V
    .locals 2

    .line 1
    sget-object v0, Lml;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lqp;

    invoke-direct {v1, p0}, Lqp;-><init>(Lyp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic L(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/core/app/b;->L0(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p1, p3}, Lyp$e;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    iget-object p1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p1, p3}, Lyp$e;->q(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public M()V
    .locals 5

    const-string v0, "CloudStoreManager"

    .line 1
    iget-object v1, p0, Lyp;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lyp;->P()V

    .line 3
    :cond_0
    iget-object v1, p0, Lyp;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0}, Lyp;->R()V

    .line 5
    :cond_1
    iget-object v1, p0, Lyp;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-direct {p0}, Lyp;->Q()V

    .line 7
    :cond_2
    iget-object v1, p0, Lyp;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    :try_start_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v3, "update_config.json"

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "utf-8"

    .line 11
    invoke-static {v1, v3}, Landroidx/core/app/b;->q0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalUpdateConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-static {v1}, Lrq;->m(Ljava/lang/Throwable;)V

    .line 17
    :cond_3
    :goto_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroidx/core/app/b;->f0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v0, p0, Lyp;->k:Landroid/os/Handler;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, p0, Lyp;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "downloadUpdateConfig"

    .line 21
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lyp;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_config.json.tmp"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v1, Lml;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lom;

    sget-object v3, Ldq;->a:Ljava/lang/String;

    new-instance v4, Lzp;

    invoke-direct {v4, p0}, Lzp;-><init>(Lyp;)V

    invoke-direct {v2, v3, v0, v4}, Lom;-><init>(Ljava/lang/String;Ljava/lang/String;Lom$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public synthetic N(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p3, p0, Lyp;->a:Lcom/google/billingclient/g;

    const-string p4, "inapp"

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/billingclient/g;->t(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic O()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyp;->P()V

    .line 2
    invoke-direct {p0}, Lyp;->Q()V

    .line 3
    invoke-direct {p0}, Lyp;->R()V

    return-void
.end method

.method public T(Lyp$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyp;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public U(Lyp$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyp;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public V(Lcom/google/billingclient/g$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyp;->b:Lcom/google/billingclient/g$d;

    return-void
.end method

.method public x(Lyp$e;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDownloadListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudStoreManager"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lyp;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lyp;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public y(Lyp$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyp;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lyp;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public z(Lfq;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Download_Failed"

    const-string v1, "Bean is null"

    .line 2
    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lfq;->h:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lyp;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CloudStoreManager"

    const-string v3, " is downloading, return"

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyp;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const-string v5, "Store_Download"

    .line 7
    invoke-static {v1, v5, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    instance-of v1, p1, Lgq;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    .line 9
    check-cast p1, Lgq;

    .line 10
    iget-object v0, p1, Lfq;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lfq;->k:Ljava/lang/String;

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lyp;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyp;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p1, Lfq;->h:Ljava/lang/String;

    invoke-static {v1}, Ldq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object p1, p1, Lfq;->k:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/io/File;

    const-string v3, "/.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v7, :cond_4

    .line 19
    new-instance v1, Lvp;

    invoke-direct {v1, p0, v2, p1, v0}, Lvp;-><init>(Lyp;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lml;->h(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p1, v0}, Lyp$e;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v4, Leq;

    invoke-static {v1, v3}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p1, v1, v6, v7}, Leq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0, v0, v2}, Lyp;->A(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 24
    :cond_6
    :goto_0
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DownloadFailed/CutoutBg is not valid"

    .line 25
    invoke-static {p1, v5, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 26
    :cond_7
    instance-of v1, p1, Liq;

    const-string v2, "/"

    if-eqz v1, :cond_8

    .line 27
    invoke-static {v0}, Ldq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1, v2}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Liq;

    invoke-virtual {v3}, Liq;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_3

    .line 29
    :cond_8
    instance-of v1, p1, Lhq;

    if-eqz v1, :cond_a

    .line 30
    invoke-static {v0}, Ldq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lhq;

    .line 32
    iget-object v5, v4, Lhq;->n:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 33
    iget-object v5, v4, Lfq;->k:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lhq;->n:Ljava/lang/String;

    .line 35
    :cond_9
    iget-object v2, v4, Lhq;->n:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    move-object v1, v6

    move-object v2, v1

    :goto_2
    const/4 v3, 0x0

    .line 37
    :goto_3
    invoke-static {p1}, Lyp;->S(Lfq;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 38
    iget-object p1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p1, v0}, Lyp$e;->n(Ljava/lang/String;)V

    return-void

    :cond_b
    if-nez v1, :cond_c

    .line 39
    iget-object p1, p0, Lyp;->r:Lyp$e;

    invoke-interface {p1, v0}, Lyp$e;->q(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v4, Leq;

    iget-object p1, p1, Lfq;->k:Ljava/lang/String;

    xor-int/2addr v3, v7

    invoke-direct {v4, p1, v2, v6, v3}, Leq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0, v0, v1}, Lyp;->A(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
