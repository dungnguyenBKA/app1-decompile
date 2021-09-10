.class public Lcom/google/firebase/remoteconfig/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/abt/c;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/firebase/remoteconfig/internal/e;

.field private final d:Lcom/google/firebase/remoteconfig/internal/e;

.field private final e:Lcom/google/firebase/remoteconfig/internal/e;

.field private final f:Lcom/google/firebase/remoteconfig/internal/k;

.field private final g:Lcom/google/firebase/remoteconfig/internal/m;

.field private final h:Lcom/google/firebase/remoteconfig/internal/n;

.field private final i:Lcom/google/firebase/installations/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/f;->i:Lcom/google/firebase/installations/g;

    .line 3
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/f;->a:Lcom/google/firebase/abt/c;

    .line 4
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/f;->b:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/f;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 6
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/f;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 7
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/f;->e:Lcom/google/firebase/remoteconfig/internal/e;

    .line 8
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/f;->f:Lcom/google/firebase/remoteconfig/internal/k;

    .line 9
    iput-object p10, p0, Lcom/google/firebase/remoteconfig/f;->g:Lcom/google/firebase/remoteconfig/internal/m;

    .line 10
    iput-object p11, p0, Lcom/google/firebase/remoteconfig/f;->h:Lcom/google/firebase/remoteconfig/internal/n;

    return-void
.end method

.method static a(Lcom/google/firebase/remoteconfig/f;Lkw;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->b()V

    .line 4
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FirebaseRemoteConfig"

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->c()Lorg/json/JSONArray;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->a:Lcom/google/firebase/abt/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/f;->l(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/f;->a:Lcom/google/firebase/abt/c;

    invoke-virtual {p0, p1}, Lcom/google/firebase/abt/c;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/abt/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Could not update ABT experiments."

    .line 9
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Could not parse ABT experiments from the JSON response."

    .line 10
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p0, "Activated configs written to disk are null."

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static e()Lcom/google/firebase/remoteconfig/f;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->h()Lcom/google/firebase/c;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/remoteconfig/n;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/n;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/n;->c()Lcom/google/firebase/remoteconfig/f;

    move-result-object v0

    return-object v0
.end method

.method static h(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)Lkw;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    invoke-virtual {p2}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lkw;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/f;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->e()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/f;->e()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_3

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/f;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/firebase/remoteconfig/internal/e;->h(Lcom/google/firebase/remoteconfig/internal/f;)Lkw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/f;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/a;->a(Lcom/google/firebase/remoteconfig/f;)Ldw;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p2, p0}, Lkw;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object p0

    return-object p0

    .line 10
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)Ljava/lang/Void;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/f;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/n;->g(Lcom/google/firebase/remoteconfig/k;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static l(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b()Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/f;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkw;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 3
    invoke-static {v2}, Lnw;->f([Lkw;)Lkw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/f;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/remoteconfig/c;->a(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)Ldw;

    move-result-object v0

    .line 4
    invoke-virtual {v2, v3, v0}, Lkw;->h(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object v0

    return-object v0
.end method

.method public c()Lkw;
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
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->f:Lcom/google/firebase/remoteconfig/internal/k;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/k;->a()Lkw;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/firebase/remoteconfig/d;->b()Ljw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->n(Ljw;)Lkw;

    move-result-object v0

    return-object v0
.end method

.method public d()Lkw;
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
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->f:Lcom/google/firebase/remoteconfig/internal/k;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/k;->a()Lkw;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/firebase/remoteconfig/d;->b()Ljw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->n(Ljw;)Lkw;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/f;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/b;->b(Lcom/google/firebase/remoteconfig/f;)Ljw;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->g:Lcom/google/firebase/remoteconfig/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->g:Lcom/google/firebase/remoteconfig/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/p;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/google/firebase/remoteconfig/k;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/k;",
            ")",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/e;->a(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {v0, p1}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->e:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/f;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    return-void
.end method
