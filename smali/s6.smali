.class public Ls6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dreamtobe/kpswitch/a;


# instance fields
.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private final e:[I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls6;->c:Z

    .line 3
    iput-boolean v0, p0, Ls6;->d:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    iput-object v1, p0, Ls6;->e:[I

    .line 5
    iput-boolean v0, p0, Ls6;->f:Z

    .line 6
    iput-object p1, p0, Ls6;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcn/dreamtobe/kpswitch/R$styleable;->a:[I

    .line 8
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Ls6;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_0
    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-boolean v0, p0, Ls6;->c:Z

    .line 2
    :cond_0
    iget-object v1, p0, Ls6;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-boolean v1, p0, Ls6;->f:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls6;->f:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ls6;->c:Z

    return-void
.end method

.method public d(II)[I
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls6;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Ls6;->b:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 4
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v2, p2

    move p2, p1

    move p1, v2

    .line 5
    :cond_0
    iget-object v0, p0, Ls6;->e:[I

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 6
    aput p2, v0, p1

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "You can\'t invoke handle show in handler, please instead of handling in the panel layout, maybe just need invoke super.setVisibility(View.VISIBLE)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls6;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ls6;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lu6;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls6;->f:Z

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls6;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
