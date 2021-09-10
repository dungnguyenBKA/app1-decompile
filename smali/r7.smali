.class public Lr7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb7;
.implements Ls7$b;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls7$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lx9$a;

.field private final d:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz9;Lx9;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr7;->b:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, Lx9;->f()Z

    move-result v0

    iput-boolean v0, p0, Lr7;->a:Z

    .line 4
    invoke-virtual {p2}, Lx9;->e()Lx9$a;

    move-result-object v0

    iput-object v0, p0, Lr7;->c:Lx9$a;

    .line 5
    invoke-virtual {p2}, Lx9;->d()Lu8;

    move-result-object v0

    invoke-virtual {v0}, Lu8;->a()Ls7;

    move-result-object v0

    iput-object v0, p0, Lr7;->d:Ls7;

    .line 6
    invoke-virtual {p2}, Lx9;->b()Lu8;

    move-result-object v1

    invoke-virtual {v1}, Lu8;->a()Ls7;

    move-result-object v1

    iput-object v1, p0, Lr7;->e:Ls7;

    .line 7
    invoke-virtual {p2}, Lx9;->c()Lu8;

    move-result-object p2

    invoke-virtual {p2}, Lu8;->a()Ls7;

    move-result-object p2

    iput-object p2, p0, Lr7;->f:Ls7;

    .line 8
    invoke-virtual {p1, v0}, Lz9;->i(Ls7;)V

    .line 9
    invoke-virtual {p1, v1}, Lz9;->i(Ls7;)V

    .line 10
    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    .line 11
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 12
    invoke-virtual {v1, p0}, Ls7;->a(Ls7$b;)V

    .line 13
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lr7;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lr7;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls7$b;

    invoke-interface {v1}, Ls7$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Ljava/util/List<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method c(Ls7$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr7;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ls7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr7;->e:Ls7;

    return-object v0
.end method

.method public g()Ls7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr7;->f:Ls7;

    return-object v0
.end method

.method public h()Ls7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr7;->d:Ls7;

    return-object v0
.end method

.method i()Lx9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lr7;->c:Lx9$a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr7;->a:Z

    return v0
.end method
