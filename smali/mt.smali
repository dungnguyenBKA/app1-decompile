.class public Lmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llt;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile e:Lnt;


# instance fields
.field private final a:Lmv;

.field private final b:Lmv;

.field private final c:Lzt;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;


# direct methods
.method constructor <init>(Lmv;Lmv;Lzt;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmt;->a:Lmv;

    .line 3
    iput-object p2, p0, Lmt;->b:Lmv;

    .line 4
    iput-object p3, p0, Lmt;->c:Lzt;

    .line 5
    iput-object p4, p0, Lmt;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    .line 6
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a()V

    return-void
.end method

.method public static a()Lmt;
    .locals 2

    .line 1
    sget-object v0, Lmt;->e:Lnt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnt;->o()Lmt;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lmt;->e:Lnt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lmt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lmt;->e:Lnt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lbt$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbt$b;-><init>(Lbt$a;)V

    .line 5
    invoke-virtual {v1, p0}, Lbt$b;->b(Landroid/content/Context;)Lnt$a;

    .line 6
    check-cast v1, Lbt$b;

    invoke-virtual {v1}, Lbt$b;->a()Lnt;

    move-result-object p0

    sput-object p0, Lmt;->e:Lnt;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lmt;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    return-object v0
.end method

.method public d(Lct;)Lbs;
    .locals 4

    .line 1
    new-instance v0, Ljt;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/cct/a;

    invoke-virtual {v1}, Lcom/google/android/datatransport/cct/a;->e()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Lit;->a()Lit$a;

    move-result-object v2

    const-string v3, "cct"

    .line 4
    invoke-virtual {v2, v3}, Lit$a;->b(Ljava/lang/String;)Lit$a;

    .line 5
    check-cast p1, Lcom/google/android/datatransport/cct/a;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->d()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lit$a;->c([B)Lit$a;

    .line 6
    invoke-virtual {v2}, Lit$a;->a()Lit;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Ljt;-><init>(Ljava/util/Set;Lit;Llt;)V

    return-object v0
.end method

.method public e(Lht;Lcs;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmt;->c:Lzt;

    .line 2
    invoke-virtual {p1}, Lht;->d()Lit;

    move-result-object v1

    invoke-virtual {p1}, Lht;->b()Lxr;

    move-result-object v2

    invoke-virtual {v2}, Lxr;->c()Lyr;

    move-result-object v2

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lit;->a()Lit$a;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lit;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lit$a;->b(Ljava/lang/String;)Lit$a;

    .line 6
    invoke-virtual {v3, v2}, Lit$a;->d(Lyr;)Lit$a;

    .line 7
    invoke-virtual {v1}, Lit;->c()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lit$a;->c([B)Lit$a;

    .line 8
    invoke-virtual {v3}, Lit$a;->a()Lit;

    move-result-object v1

    .line 9
    new-instance v2, Lys$b;

    invoke-direct {v2}, Lys$b;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3}, Lys$b;->k(Ljava/util/Map;)Let$a;

    .line 10
    iget-object v3, p0, Lmt;->a:Lmv;

    .line 11
    invoke-interface {v3}, Lmv;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lys$b;->h(J)Let$a;

    iget-object v3, p0, Lmt;->b:Lmv;

    .line 12
    invoke-interface {v3}, Lmv;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lys$b;->j(J)Let$a;

    .line 13
    invoke-virtual {p1}, Lht;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lys$b;->i(Ljava/lang/String;)Let$a;

    new-instance v3, Ldt;

    .line 14
    invoke-virtual {p1}, Lht;->a()Lwr;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lht;->c()Lzr;

    move-result-object v5

    invoke-virtual {p1}, Lht;->b()Lxr;

    move-result-object v6

    invoke-virtual {v6}, Lxr;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lzr;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 16
    invoke-direct {v3, v4, v5}, Ldt;-><init>(Lwr;[B)V

    invoke-virtual {v2, v3}, Lys$b;->g(Ldt;)Let$a;

    .line 17
    invoke-virtual {p1}, Lht;->b()Lxr;

    move-result-object p1

    invoke-virtual {p1}, Lxr;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lys$b;->f(Ljava/lang/Integer;)Let$a;

    .line 18
    invoke-virtual {v2}, Lys$b;->d()Let;

    move-result-object p1

    .line 19
    invoke-interface {v0, v1, p1, p2}, Lzt;->a(Lit;Let;Lcs;)V

    return-void
.end method
