.class Lcom/google/android/material/appbar/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/d;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/d;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lc3;->o(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/d;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/d;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lc3;->n(Landroid/view/View;I)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/d;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/d;->d:I

    return v0
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/d;->b:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/d;->c:I

    return-void
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/d;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/d;->d:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/d;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
