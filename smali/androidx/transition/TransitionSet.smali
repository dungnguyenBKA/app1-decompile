.class public Landroidx/transition/TransitionSet;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionSet$b;
    }
.end annotation


# instance fields
.field private A:Z

.field B:I

.field C:Z

.field private D:I

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->A:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->C:Z

    .line 5
    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->A:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->C:Z

    .line 10
    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    .line 11
    sget-object v1, Landroidx/transition/p;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Lc1;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 13
    invoke-virtual {p0, p2}, Landroidx/transition/TransitionSet;->V(I)Landroidx/transition/TransitionSet;

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public C(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->C(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->C(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    return-object p0
.end method

.method public F(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->F(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public G(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->G(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->G(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected H()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/transition/Transition;->O()V

    .line 3
    invoke-virtual {p0}, Landroidx/transition/Transition;->m()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroidx/transition/TransitionSet$b;

    invoke-direct {v0, p0}, Landroidx/transition/TransitionSet$b;-><init>(Landroidx/transition/TransitionSet;)V

    .line 5
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 6
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/transition/TransitionSet;->B:I

    .line 8
    iget-boolean v0, p0, Landroidx/transition/TransitionSet;->A:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 11
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 12
    new-instance v3, Landroidx/transition/TransitionSet$a;

    invoke-direct {v3, p0, v2}, Landroidx/transition/TransitionSet$a;-><init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V

    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/transition/Transition;->H()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 16
    invoke-virtual {v1}, Landroidx/transition/Transition;->H()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic I(J)Landroidx/transition/Transition;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/transition/TransitionSet;->T(J)Landroidx/transition/TransitionSet;

    return-object p0
.end method

.method public J(Landroidx/transition/Transition$c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->J(Landroidx/transition/Transition$c;)V

    .line 2
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    .line 3
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->J(Landroidx/transition/Transition$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic K(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->U(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public L(Landroidx/transition/PathMotion;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->L(Landroidx/transition/PathMotion;)V

    .line 2
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    .line 3
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->L(Landroidx/transition/PathMotion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M(Landroidx/transition/u;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->t:Landroidx/transition/u;

    .line 2
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    .line 3
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->M(Landroidx/transition/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N(J)Landroidx/transition/Transition;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->N(J)Landroidx/transition/Transition;

    return-object p0
.end method

.method P(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 3
    invoke-static {v0, v2}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    const-string v3, "  "

    invoke-static {p1, v3}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public Q(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Landroidx/transition/Transition;->j:Landroidx/transition/TransitionSet;

    .line 3
    iget-wide v0, p0, Landroidx/transition/Transition;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->I(J)Landroidx/transition/Transition;

    .line 5
    :cond_0
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/transition/Transition;->q()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->K(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 7
    :cond_1
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/transition/Transition;->t:Landroidx/transition/u;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->M(Landroidx/transition/u;)V

    .line 10
    :cond_2
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/transition/Transition;->s()Landroidx/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->L(Landroidx/transition/PathMotion;)V

    .line 12
    :cond_3
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroidx/transition/Transition;->p()Landroidx/transition/Transition$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->J(Landroidx/transition/Transition$c;)V

    :cond_4
    return-object p0
.end method

.method public R(I)Landroidx/transition/Transition;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/Transition;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public S()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public T(J)Landroidx/transition/TransitionSet;
    .locals 3

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/Transition;->I(J)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public U(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/TransitionSet;->D:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/TransitionSet;->D:I

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->K(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/Transition;->K(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-object p1, p0

    check-cast p1, Landroidx/transition/TransitionSet;

    return-object p1
.end method

.method public V(I)Landroidx/transition/TransitionSet;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroidx/transition/TransitionSet;->A:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->A:Z

    :goto_0
    return-object p0
.end method

.method public a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    return-object p0
.end method

.method public b(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->b(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->j()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroidx/transition/w;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 3
    iget-object v2, p1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->A(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->d(Landroidx/transition/w;)V

    .line 5
    iget-object v2, p1, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method f(Landroidx/transition/w;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->f(Landroidx/transition/w;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->f(Landroidx/transition/w;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Landroidx/transition/w;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 3
    iget-object v2, p1, Landroidx/transition/w;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->A(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->g(Landroidx/transition/w;)V

    .line 5
    iget-object v2, p1, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j()Landroidx/transition/Transition;
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/transition/Transition;->j()Landroidx/transition/Transition;

    move-result-object v0

    check-cast v0, Landroidx/transition/TransitionSet;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    invoke-virtual {v3}, Landroidx/transition/Transition;->j()Landroidx/transition/Transition;

    move-result-object v3

    .line 5
    iget-object v4, v0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Landroidx/transition/Transition;->j:Landroidx/transition/TransitionSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected l(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/x;",
            "Landroidx/transition/x;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/w;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/w;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->u()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Landroidx/transition/TransitionSet;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/Transition;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Landroidx/transition/TransitionSet;->A:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v6}, Landroidx/transition/Transition;->u()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Landroidx/transition/Transition;->N(J)Landroidx/transition/Transition;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/Transition;->N(J)Landroidx/transition/Transition;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Landroidx/transition/Transition;->l(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
