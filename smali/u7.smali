.class public Lu7;
.super Lx7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx7<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lx7;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method h(Lec;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu7;->n(Lec;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public m()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls7;->b()Lec;

    move-result-object v0

    invoke-virtual {p0}, Ls7;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu7;->n(Lec;F)F

    move-result v0

    return v0
.end method

.method n(Lec;F)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lec;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lec;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ls7;->e:Lgc;

    if-eqz v1, :cond_0

    .line 3
    iget v2, p1, Lec;->e:F

    iget-object v0, p1, Lec;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lec;->b:Ljava/lang/Object;

    iget-object v5, p1, Lec;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ls7;->e()F

    move-result v7

    .line 5
    iget v8, p0, Ls7;->d:F

    move v6, p2

    .line 6
    invoke-virtual/range {v1 .. v8}, Lgc;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lec;->f()F

    move-result v0

    invoke-virtual {p1}, Lec;->c()F

    move-result p1

    invoke-static {v0, p1, p2}, Lcc;->f(FFF)F

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
