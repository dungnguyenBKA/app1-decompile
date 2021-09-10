.class Lbb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "k"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lbb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lub;",
            "Lcom/airbnb/lottie/e;",
            "F",
            "Lrb<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lec<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->g:Lub$b;

    if-ne v1, v2, :cond_0

    const-string p0, "Lottie doesn\'t support expressions."

    .line 3
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lub;->L()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    sget-object v1, Lbb;->a:Lub$a;

    invoke-virtual {p0, v1}, Lub;->q0(Lub$a;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->b:Lub$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 9
    invoke-virtual {p0}, Lub;->o()V

    .line 10
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->h:Lub$b;

    if-ne v1, v2, :cond_2

    .line 11
    invoke-static {p0, p1, p2, p3, v3}, Lab;->a(Lub;Lcom/airbnb/lottie/e;FLrb;Z)Lec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 13
    invoke-static {p0, p1, p2, p3, v1}, Lab;->a(Lub;Lcom/airbnb/lottie/e;FLrb;Z)Lec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lub;->S()V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {p0, p1, p2, p3, v3}, Lab;->a(Lub;Lcom/airbnb/lottie/e;FLrb;Z)Lec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lub;->V()V

    .line 17
    invoke-static {v0}, Lbb;->b(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lec<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec;

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec;

    .line 4
    iget v4, v3, Lec;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lec;->f:Ljava/lang/Float;

    .line 5
    iget-object v4, v2, Lec;->c:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v3, v3, Lec;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 6
    iput-object v3, v2, Lec;->c:Ljava/lang/Object;

    .line 7
    instance-of v3, v2, Lz7;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lz7;

    invoke-virtual {v2}, Lz7;->i()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    .line 10
    iget-object v1, v0, Lec;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lec;->c:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
