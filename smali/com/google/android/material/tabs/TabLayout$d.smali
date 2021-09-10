.class public Lcom/google/android/material/tabs/TabLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Landroid/view/View;

.field public f:Lcom/google/android/material/tabs/TabLayout;

.field public g:Lcom/google/android/material/tabs/TabLayout$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$d;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$d;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout$d;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$d;->b:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->e:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->d:I

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$d;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->b:Ljava/lang/CharSequence;

    .line 5
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->c:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$d;->d:I

    .line 7
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->e:Landroid/view/View;

    return-void
.end method

.method public i(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->c:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$d;->n()V

    return-object p0
.end method

.method public j(I)Lcom/google/android/material/tabs/TabLayout$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->e:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$d;->n()V

    return-object p0
.end method

.method public k(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$d;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->A:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->r(Z)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$d;->n()V

    return-object p0
.end method

.method l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->d:I

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$d;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$d;->n()V

    return-object p0
.end method

.method n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->e()V

    :cond_0
    return-void
.end method
