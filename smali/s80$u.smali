.class Ls80$u;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Lp60;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La90;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls80$u;->d(La90;)Lp60;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lc90;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lp60;

    invoke-virtual {p0, p1, p2}, Ls80$u;->e(Lc90;Lp60;)V

    return-void
.end method

.method public d(La90;)Lp60;
    .locals 3

    .line 1
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, La90;->t0()V

    .line 3
    sget-object p1, Lr60;->a:Lr60;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lu60;

    invoke-virtual {p1}, La90;->n0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lu60;

    new-instance v1, Lu70;

    invoke-direct {v1, p1}, Lu70;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lu60;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lu60;

    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lu60;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 10
    invoke-virtual {p1}, La90;->o()V

    .line 11
    :goto_0
    invoke-virtual {p1}, La90;->j0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, La90;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ls80$u;->d(La90;)Lp60;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, La90;->b0()V

    return-object v0

    .line 14
    :cond_6
    new-instance v0, Lm60;

    invoke-direct {v0}, Lm60;-><init>()V

    .line 15
    invoke-virtual {p1}, La90;->j()V

    .line 16
    :goto_1
    invoke-virtual {p1}, La90;->j0()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0, p1}, Ls80$u;->d(La90;)Lp60;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm60;->i(Lp60;)V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p1}, La90;->V()V

    return-object v0
.end method

.method public e(Lc90;Lp60;)V
    .locals 2

    if-eqz p2, :cond_9

    .line 1
    instance-of v0, p2, Lr60;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of v0, p2, Lu60;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lp60;->f()Lu60;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lu60;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lu60;->i()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc90;->y0(Ljava/lang/Number;)Lc90;

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {p2}, Lu60;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lu60;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lc90;->A0(Z)Lc90;

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {p2}, Lu60;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc90;->z0(Ljava/lang/String;)Lc90;

    goto/16 :goto_3

    .line 9
    :cond_3
    instance-of v0, p2, Lm60;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lc90;->o()Lc90;

    if-eqz v0, :cond_5

    .line 11
    check-cast p2, Lm60;

    .line 12
    invoke-virtual {p2}, Lm60;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp60;

    .line 13
    invoke-virtual {p0, p1, v0}, Ls80$u;->e(Lc90;Lp60;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lc90;->V()Lc90;

    goto :goto_3

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    instance-of v0, p2, Ls60;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p1}, Lc90;->L()Lc90;

    .line 18
    invoke-virtual {p2}, Lp60;->e()Ls60;

    move-result-object p2

    invoke-virtual {p2}, Ls60;->m()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc90;->l0(Ljava/lang/String;)Lc90;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp60;

    invoke-virtual {p0, p1, v0}, Ls80$u;->e(Lc90;Lp60;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {p1}, Lc90;->b0()Lc90;

    goto :goto_3

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    :goto_3
    return-void
.end method
