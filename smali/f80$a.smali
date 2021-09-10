.class final Lf80$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lz60<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lw70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw70<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj60;Ljava/lang/reflect/Type;Lz60;Lw70;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj60;",
            "Ljava/lang/reflect/Type;",
            "Lz60<",
            "TE;>;",
            "Lw70<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    .line 2
    new-instance v0, Lr80;

    invoke-direct {v0, p1, p3, p2}, Lr80;-><init>(Lj60;Lz60;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lf80$a;->a:Lz60;

    .line 3
    iput-object p4, p0, Lf80$a;->b:Lw70;

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v0

    sget-object v1, Lb90;->j:Lb90;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, La90;->t0()V

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf80$a;->b:Lw70;

    invoke-interface {v0}, Lw70;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, La90;->j()V

    .line 5
    :goto_0
    invoke-virtual {p1}, La90;->j0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lf80$a;->a:Lz60;

    invoke-virtual {v1, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, La90;->V()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lc90;->o()Lc90;

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lf80$a;->a:Lz60;

    invoke-virtual {v1, p1, v0}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lc90;->V()Lc90;

    :goto_1
    return-void
.end method
