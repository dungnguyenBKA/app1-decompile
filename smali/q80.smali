.class public final Lq80;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq80$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz60<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lw60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw60<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lo60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo60<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lj60;

.field private final d:Lz80;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz80<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lq80$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq80<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private f:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw60;Lo60;Lj60;Lz80;La70;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw60<",
            "TT;>;",
            "Lo60<",
            "TT;>;",
            "Lj60;",
            "Lz80<",
            "TT;>;",
            "La70;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    .line 2
    new-instance p5, Lq80$b;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lq80$b;-><init>(Lq80;Lq80$a;)V

    iput-object p5, p0, Lq80;->e:Lq80$b;

    .line 3
    iput-object p1, p0, Lq80;->a:Lw60;

    .line 4
    iput-object p2, p0, Lq80;->b:Lo60;

    .line 5
    iput-object p3, p0, Lq80;->c:Lj60;

    .line 6
    iput-object p4, p0, Lq80;->d:Lz80;

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq80;->b:Lo60;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lq80;->f:Lz60;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lq80;->c:Lj60;

    iget-object v2, p0, Lq80;->d:Lz80;

    invoke-virtual {v0, v1, v2}, Lj60;->f(La70;Lz80;)Lz60;

    move-result-object v0

    iput-object v0, p0, Lq80;->f:Lz60;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lx70;->b(La90;)Lp60;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v0, p1, Lr60;

    if-eqz v0, :cond_2

    return-object v1

    .line 8
    :cond_2
    iget-object v0, p0, Lq80;->b:Lo60;

    iget-object v1, p0, Lq80;->d:Lz80;

    invoke-virtual {v1}, Lz80;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lq80;->e:Lq80$b;

    invoke-interface {v0, p1, v1, v2}, Lo60;->a(Lp60;Ljava/lang/reflect/Type;Ln60;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq80;->a:Lw60;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lq80;->f:Lz60;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lq80;->c:Lj60;

    const/4 v1, 0x0

    iget-object v2, p0, Lq80;->d:Lz80;

    invoke-virtual {v0, v1, v2}, Lj60;->f(La70;Lz80;)Lz60;

    move-result-object v0

    iput-object v0, p0, Lq80;->f:Lz60;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lq80;->d:Lz80;

    invoke-virtual {v1}, Lz80;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lq80;->e:Lq80$b;

    invoke-interface {v0, p2, v1, v2}, Lw60;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lv60;)Lp60;

    move-result-object p2

    .line 7
    sget-object v0, Ls80;->X:Lz60;

    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
