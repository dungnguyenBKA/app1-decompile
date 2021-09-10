.class public abstract Landroidx/work/impl/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Landroidx/work/impl/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/impl/b;

    invoke-direct {v0}, Landroidx/work/impl/b;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/a;->b:Landroidx/work/impl/b;

    return-void
.end method

.method public static b(Ljava/lang/String;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/utils/a$a;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/a$a;-><init>(Landroidx/work/impl/i;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Landroidx/work/impl/i;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lu5;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    move-object v4, v1

    check-cast v4, Le6;

    invoke-virtual {v4, v3}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v5

    .line 9
    sget-object v6, Landroidx/work/m;->d:Landroidx/work/m;

    if-eq v5, v6, :cond_0

    sget-object v6, Landroidx/work/m;->e:Landroidx/work/m;

    if-eq v5, v6, :cond_0

    .line 10
    sget-object v5, Landroidx/work/m;->g:Landroidx/work/m;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 11
    :cond_0
    move-object v4, v0

    check-cast v4, Lv5;

    invoke-virtual {v4, v3}, Lv5;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/work/impl/i;->g()Landroidx/work/impl/c;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p2}, Landroidx/work/impl/c;->g(Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/i;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/d;

    .line 15
    invoke-interface {v0, p2}, Landroidx/work/impl/d;->cancel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public c()Landroidx/work/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/a;->b:Landroidx/work/impl/b;

    return-object v0
.end method

.method abstract d()V
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/a;->d()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/a;->b:Landroidx/work/impl/b;

    sget-object v1, Landroidx/work/k;->a:Landroidx/work/k$b$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/b;->a(Landroidx/work/k$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/a;->b:Landroidx/work/impl/b;

    new-instance v2, Landroidx/work/k$b$a;

    invoke-direct {v2, v0}, Landroidx/work/k$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/b;->a(Landroidx/work/k$b;)V

    :goto_0
    return-void
.end method
