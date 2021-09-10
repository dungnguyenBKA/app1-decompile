.class public Landroidx/room/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/room/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Li4$c;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Landroidx/room/g$d;

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/g$a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/room/g$a;->a:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Landroidx/room/g$a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/room/g$a;->i:Z

    .line 6
    new-instance p1, Landroidx/room/g$d;

    invoke-direct {p1}, Landroidx/room/g$d;-><init>()V

    iput-object p1, p0, Landroidx/room/g$a;->k:Landroidx/room/g$d;

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/g$b;)Landroidx/room/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/g$b;",
            ")",
            "Landroidx/room/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/g$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/g$a;->d:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/room/g$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs b([Ld4;)Landroidx/room/g$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ld4;",
            ")",
            "Landroidx/room/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/g$a;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/g$a;->l:Ljava/util/Set;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Landroidx/room/g$a;->l:Ljava/util/Set;

    iget v4, v2, Ld4;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Landroidx/room/g$a;->l:Ljava/util/Set;

    iget v2, v2, Ld4;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/room/g$a;->k:Landroidx/room/g$d;

    invoke-virtual {v0, p1}, Landroidx/room/g$d;->a([Ld4;)V

    return-object p0
.end method

.method public c()Landroidx/room/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/g$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/room/g$a;->h:Z

    return-object p0
.end method

.method public d()Landroidx/room/g;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/g$a;->c:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Landroidx/room/g$a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 3
    iget-object v0, p0, Landroidx/room/g$a;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ls;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/g$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 6
    iput-object v0, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 8
    iput-object v0, p0, Landroidx/room/g$a;->e:Ljava/util/concurrent/Executor;

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/room/g$a;->g:Li4$c;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lo4;

    invoke-direct {v0}, Lo4;-><init>()V

    iput-object v0, p0, Landroidx/room/g$a;->g:Li4$c;

    .line 11
    :cond_3
    new-instance v0, Landroidx/room/a;

    iget-object v2, p0, Landroidx/room/g$a;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/room/g$a;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/g$a;->g:Li4$c;

    iget-object v5, p0, Landroidx/room/g$a;->k:Landroidx/room/g$d;

    iget-object v6, p0, Landroidx/room/g$a;->d:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroidx/room/g$a;->h:Z

    const-string v1, "activity"

    .line 12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    sget-object v1, Landroidx/room/g$c;->d:Landroidx/room/g$c;

    goto :goto_1

    .line 15
    :cond_4
    sget-object v1, Landroidx/room/g$c;->c:Landroidx/room/g$c;

    :goto_1
    move-object v8, v1

    .line 16
    iget-object v9, p0, Landroidx/room/g$a;->e:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Landroidx/room/g$a;->f:Ljava/util/concurrent/Executor;

    const/4 v11, 0x0

    iget-boolean v12, p0, Landroidx/room/g$a;->i:Z

    iget-boolean v13, p0, Landroidx/room/g$a;->j:Z

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Landroidx/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;Li4$c;Landroidx/room/g$d;Ljava/util/List;ZLandroidx/room/g$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V

    .line 17
    iget-object v1, p0, Landroidx/room/g$a;->a:Ljava/lang/Class;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Impl"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    :goto_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    check-cast v1, Landroidx/room/g;

    .line 27
    invoke-virtual {v1, v0}, Landroidx/room/g;->l(Landroidx/room/a;)V

    return-object v1

    .line 28
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an instance of "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot access the constructor"

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "cannot find implementation for "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Landroidx/room/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/g$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/room/g$a;->i:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/room/g$a;->j:Z

    return-object p0
.end method

.method public f(Ljava/util/concurrent/Executor;)Landroidx/room/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/g$a;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method
