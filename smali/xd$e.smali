.class final Lxd$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lxd$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxd$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lxd$e;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxd$d;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lxd$e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Ldk;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    new-instance v1, Lxd$d;

    invoke-direct {v1, p1, p2}, Lxd$d;-><init>(Ldk;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Ldk;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    .line 2
    new-instance v1, Lxd$d;

    invoke-static {}, Lcl;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lxd$d;-><init>(Ldk;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c()Lxd$e;
    .locals 3

    .line 1
    new-instance v0, Lxd$e;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lxd$e;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lxd$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method d(Ldk;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    .line 2
    new-instance v1, Lxd$d;

    invoke-static {}, Lcl;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lxd$d;-><init>(Ldk;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lxd$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lxd$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
