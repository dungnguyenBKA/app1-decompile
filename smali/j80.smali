.class public final Lj80;
.super Lc90;
.source "SourceFile"


# static fields
.field private static final p:Ljava/io/Writer;

.field private static final q:Lu60;


# instance fields
.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp60;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Lp60;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj80$a;

    invoke-direct {v0}, Lj80$a;-><init>()V

    sput-object v0, Lj80;->p:Ljava/io/Writer;

    .line 2
    new-instance v0, Lu60;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lu60;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj80;->q:Lu60;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lj80;->p:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lc90;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj80;->m:Ljava/util/List;

    .line 3
    sget-object v0, Lr60;->a:Lr60;

    iput-object v0, p0, Lj80;->o:Lp60;

    return-void
.end method

.method private D0()Lp60;
    .locals 2

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp60;

    return-object v0
.end method

.method private E0(Lp60;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj80;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lr60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc90;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lj80;->D0()Lp60;

    move-result-object v0

    check-cast v0, Ls60;

    .line 5
    iget-object v1, p0, Lj80;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lj80;->n:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iput-object p1, p0, Lj80;->o:Lp60;

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0}, Lj80;->D0()Lp60;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lm60;

    if-eqz v1, :cond_4

    .line 11
    check-cast v0, Lm60;

    invoke-virtual {v0, p1}, Lm60;->i(Lp60;)V

    :goto_0
    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public A0(Z)Lc90;
    .locals 1

    .line 1
    new-instance v0, Lu60;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method

.method public C0()Lp60;
    .locals 3

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj80;->o:Lp60;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected one JSON element but was "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj80;->m:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L()Lc90;
    .locals 2

    .line 1
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    .line 3
    iget-object v1, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public V()Lc90;
    .locals 2

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj80;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lj80;->D0()Lp60;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lm60;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public b0()Lc90;
    .locals 2

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj80;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lj80;->D0()Lp60;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ls60;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    sget-object v1, Lj80;->q:Lu60;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public l0(Ljava/lang/String;)Lc90;
    .locals 1

    .line 1
    iget-object v0, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj80;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lj80;->D0()Lp60;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ls60;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lj80;->n:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public n0()Lc90;
    .locals 1

    .line 1
    sget-object v0, Lr60;->a:Lr60;

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method

.method public o()Lc90;
    .locals 2

    .line 1
    new-instance v0, Lm60;

    invoke-direct {v0}, Lm60;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    .line 3
    iget-object v1, p0, Lj80;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public w0(J)Lc90;
    .locals 1

    .line 1
    new-instance v0, Lu60;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method

.method public x0(Ljava/lang/Boolean;)Lc90;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lr60;->a:Lr60;

    invoke-direct {p0, p1}, Lj80;->E0(Lp60;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lu60;

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method

.method public y0(Ljava/lang/Number;)Lc90;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lr60;->a:Lr60;

    invoke-direct {p0, p1}, Lj80;->E0(Lp60;)V

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc90;->k0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lu60;

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method

.method public z0(Ljava/lang/String;)Lc90;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lr60;->a:Lr60;

    invoke-direct {p0, p1}, Lj80;->E0(Lp60;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lu60;

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj80;->E0(Lp60;)V

    return-object p0
.end method
